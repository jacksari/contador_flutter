import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ContadorPageState();
  

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 30);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks: ', style: _estiloTexto),
            Text( '$_conteo' , style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _CrearBotones()
    );
  }

  Widget _CrearBotones(){


    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30 ),
        FloatingActionButton( child: Icon( Icons.exposure_zero ), onPressed: _zero ),
        Expanded(child: SizedBox( )),
        FloatingActionButton( child: Icon( Icons.remove ), onPressed: _restar ),
        SizedBox( width: 5 ),
        FloatingActionButton( child: Icon( Icons.add ), onPressed: _agregar ),
      ],
    );
  }

  void _agregar(){
    setState(() => _conteo++ );
  }
  void _restar(){
    setState(() => _conteo-- );
  }
  void _zero(){
    setState(() => _conteo = 0 );
  }

}