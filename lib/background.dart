// class BackgroundImageFb1 extends StatelessWidget {
//   final Widget child;
//   final String imageUrl;
//   const BackgroundImageFb1(
//       {required this.child, required this.imageUrl, Key? key})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // Place as the child widget of a scaffold
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: NetworkImage(imageUrl),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: child,
//     );
//   }
// }
// Container(
//       // Place as the child widget of a scaffold
//       width: double.infinity,
//       height: double.infinity,
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: NetworkImage(
//               "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/backgrounds%2Fgradienta-m_7p45JfXQo-unsplash.jpg?alt=media&token=adc01da9-3e54-48af-91c3-d1b303498618"),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Container() // Place child here
//       )