import 'package:find_my_meal/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters-screen';
  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isGlutenFree = false;
  bool _isVegeterian = false;
  bool _isLactoseFree = false;
  bool _isVegan = false;

  @override
  void initState() {
    super.initState();
    _isGlutenFree = widget.currentFilters['gluten'];
    _isVegeterian = widget.currentFilters['vegeterian'];
    _isLactoseFree = widget.currentFilters['lactose'];
    _isVegan = widget.currentFilters['vegan'];
  }

  Widget _buildSwitchListTile(
      String title, String subtitle, bool currentVal, Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        value: currentVal,
        subtitle: Text(subtitle),
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                var selectedFilters = {
                  'gluten': _isGlutenFree,
                  'lactose': _isLactoseFree,
                  'vegan': _isVegan,
                  'vegeterial': _isVegeterian,
                };
                widget.saveFilters(selectedFilters);
              }),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal preference',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _buildSwitchListTile('Gluten Free',
                  'Only Include Gluten Free Meals', _isGlutenFree, (newVal) {
                setState(() {
                  _isGlutenFree = newVal;
                });
              }),
              _buildSwitchListTile('Lactose Free',
                  'Only Include Lactose Free Meals', _isLactoseFree, (newVal) {
                setState(() {
                  _isLactoseFree = newVal;
                });
              }),
              _buildSwitchListTile(
                  'Vegeterial', 'Only Include Vegeterial Meals', _isVegeterian,
                  (newVal) {
                setState(() {
                  _isVegeterian = newVal;
                });
              }),
              _buildSwitchListTile('Vegan', 'Only Include Vegan', _isVegan,
                  (newVal) {
                setState(() {
                  _isVegan = newVal;
                });
              }),
            ],
          ))
        ],
      ),
    );
  }
}
