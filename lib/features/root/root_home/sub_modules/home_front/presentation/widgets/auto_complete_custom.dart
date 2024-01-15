import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/services/map_service/protocols/i_map_service.dart';
import 'package:skycast/services/service_locator/service_locator_setup.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';

class AutocompleteCustom extends HookConsumerWidget {
  final Function(String queryCustom) onSelected;
  final Function(String queryCustom) onChange;
  const AutocompleteCustom({super.key, required this.onSelected, required this.onChange});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lastOptions = useRef<Iterable<String>>([]);
    final translations = useAppTranslation(context)!;

    final maps = getIt<IMapService>();
    final searchingWithQuery = useRef('');
    return Autocomplete<String>(
      fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
        return TextFormField(
          decoration: InputDecoration(
              hintText: translations.searchAPlace,
              hintStyle: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white)),
          style: const TextStyle(color: Colors.white),
          controller: textEditingController,
          onTap: onFieldSubmitted,
          focusNode: focusNode,
        );
      },
      optionsBuilder: (TextEditingValue textEditingValue) async {
        searchingWithQuery.value = textEditingValue.text;
        onChange(searchingWithQuery.value);
        final Iterable<String> options = await maps.search(searchingWithQuery.value);

        if (searchingWithQuery.value != textEditingValue.text) {
          return lastOptions.value;
        }

        lastOptions.value = options;
        return options;
      },
      onSelected: (String selection) {
        onSelected(selection);
      },
    );
  }
}
