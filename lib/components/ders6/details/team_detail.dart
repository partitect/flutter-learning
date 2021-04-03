import 'package:flutter/material.dart';
import 'package:sliver_stretch_header/sliver_stretch_header.dart';

class TeamDetail extends StatefulWidget {
  final team;
  final image;
  final point;
  TeamDetail({@required this.team, @required this.image, @required this.point});
  @override
  _TeamDetailState createState() => _TeamDetailState();
}

class _TeamDetailState extends State<TeamDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.dark,
            expandedHeight: 0,
            pinned: true, //appbarın yukarı yapışma özelliği
            floating: false, //liste aşağılara geldiğinde appbarın gözükmesi
            snap: false, //liste kayarken appbarın yüksekliğini sabit tutuyor
            backgroundColor: Colors.black.withOpacity(0),
          ),
          SliverStretchHeader(
            minBlankExtent: 500,
            background: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(widget.image),
                  colorFilter: ColorFilter.mode(
                    Colors.red.withOpacity(.5),
                    BlendMode.darken,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            child: Container(
              color: Colors.green.withOpacity(.5),
              height: 60,
              child: Center(
                child: Text(
                  widget.team,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.point + " Yıldızlı Takım",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam.Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Fusce a quam. Proin faucibus arcu quis ante. Pellentesque commodo eros a enim. Nullam quis ante. Sed cursus turpis vitae tortor Phasellus viverra  ut metus varius laoreet. Vestibulum volutpat pretium libero. Nunc sed turpis. Sed a libero. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
