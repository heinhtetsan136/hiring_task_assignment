import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            height: 194,
            decoration: BoxDecoration(color: theme.appBarTheme.backgroundColor),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: theme.appBarTheme.foregroundColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide()),
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded)),
                          hintText: "Test Project with Mohsin")),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 82,
                child: ListView.separated(
                  separatorBuilder: (_, i) {
                    return const SizedBox(
                      width: 5,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, i) {
                    return Container(
                      width: 103,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: theme.appBarTheme.foregroundColor),
                      child: Column(
                        children: [
                          SizedBox(
                              height: 42,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.people_outline,
                                    size: 22,
                                    color: theme.appBarTheme.backgroundColor,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "1125",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            theme.appBarTheme.backgroundColor),
                                  ),
                                ],
                              )),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 245, 245, 1),
                              ),
                              child: const Center(
                                child: Text(
                                  "User Involved",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 24.0, bottom: 16, left: 16, right: 16),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 354,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromRGBO(245, 245, 245, 1),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Project Update",
                        style: TextStyle(
                          letterSpacing: 0.1,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: theme.appBarTheme.backgroundColor,
                        ),
                      ),
                      SizedBox(
                        width: 67,
                        height: 24,
                        child: TextButton(
                            style: ButtonStyle(
                              padding: const WidgetStatePropertyAll(
                                EdgeInsets.all(0),
                              ),
                              shape:
                                  WidgetStatePropertyAll(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.4),
                              )),
                              backgroundColor: WidgetStatePropertyAll(
                                  theme.appBarTheme.backgroundColor),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Mark all Read",
                              style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                      SizedBox(
                        width: 24,
                        child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              size: 24,
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: theme.appBarTheme.foregroundColor,
                            borderRadius: BorderRadius.circular(2)),
                        width: 54,
                        height: 24,
                        child: DropdownButton(
                            isExpanded: true,
                            isDense: true,
                            underline: null,
                            icon: const Icon(Icons.keyboard_arrow_down_rounded),
                            value: 9,
                            items: List.generate(
                                10,
                                (e) => DropdownMenuItem(
                                    value: e, child: Text("${e + 1}"))),
                            onChanged: (e) {}),
                      ),
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: IconButton.filled(
                            padding: EdgeInsets.zero,
                            alignment: Alignment.center,
                            style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                )),
                                backgroundColor: WidgetStatePropertyAll(
                                    theme.appBarTheme.backgroundColor)),
                            onPressed: () {},
                            icon: Icon(
                              Icons.keyboard_arrow_up_rounded,
                              color: theme.appBarTheme.foregroundColor,
                            )),
                      )
                    ],
                  ),
                  const Divider(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Row(
                      children: [
                        Text(
                          "Update",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: theme.appBarTheme.backgroundColor),
                        ),
                        const Icon(
                          Icons.arrow_drop_down_rounded,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 177,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          color: theme.appBarTheme.foregroundColor),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 12, right: 12),
                              child: const Text(
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  "Your Cheetah Noman Raza 115 / LHR has now picked up your order and is speeding your way. You can reach him 03000090909. To ensure your health and safety, we have tested Noman Raza 115 /LHR’s temperature in the morning and it was 98 degrees Fahrenhe"),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            width: double.infinity,
                            height: 37,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                color: theme.appBarTheme.backgroundColor),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  size: 22,
                                  color: theme.appBarTheme.foregroundColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Mon, 10 July 2022",
                                  style: TextStyle(
                                      color: theme.appBarTheme.foregroundColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 12),
                    padding: const EdgeInsets.all(4),
                    height: 50,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(color: theme.appBarTheme.foregroundColor),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  letterSpacing: 0.1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              hintText: 'To ensure your health safety ...',
                              suffixIcon: Icon(Icons.search),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: Row(
                            children: [
                              const VerticalDivider(
                                width: 1,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.keyboard_arrow_down_rounded))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(245, 245, 245, 1)),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Tasks Quick View",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            letterSpacing: 0.1,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Row(
                      children: [
                        const VerticalDivider(
                          width: 1,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_down_rounded))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
