class Event {

  const Event({
    required this.id,
    
    required this.categories,
    required this.date,
    required this.title,
    required this.imageUrl,
    required this.time,
    required this.college_name,
    required this.about_event_title,
    required this.about_event_content,
    required this.price,
  });

  final String id;
  
  final String categories;
  final String date;
  final String title;
  final String imageUrl;
  final String time;
  final String college_name;
  final String about_event_title;
  final String about_event_content;
  final int price;
}

class EventData {
  //static final faker = Faker();
  static final List<Event> Event_details = [
    const Event(
      id: 'm1',
      
      categories: "c1",
      date: 'Oct 18 2023',
      title: 'Aquila Fest 2023',
      imageUrl: 'images/event.jpg',
      time: '08:30 PM',
      college_name: "St. peter's engineering college",
      about_event_title: 'About Event',
      about_event_content:
          "here will be a brief description about the above event long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum.",
      price: 300,
    ),
    const Event(
      id: 'm2',
      categories: "c2",
      date: 'Oct 20 2023',
      title: 'Aquila Fest 2024',
      imageUrl: 'images/music.jpg',
      time: '08:30 PM',
      college_name: "GNI",
      about_event_title: 'About Event',
      about_event_content:
          "here will be a brief description about the above event long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum.",
      price: 300,
    ),
    const Event(
      id: 'm2',
      categories: "c2",
      date: 'Oct 20 2023',
      title: 'Aquila Fest 2025',
      imageUrl: 'images/dance.jpg',
      time: '08:30 PM',
      college_name: "Hitam",
      about_event_title: 'About Event',
      about_event_content:
          "here will be a brief description about the above event long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum.",
      price: 300,
    ),
  ];

  static List<Event> getsuggestions(String query) =>
      List.of(Event_details).where((Event) {
        final userLower = Event.title.toLowerCase()+Event.college_name.toLowerCase();
        final queryLower = query.toLowerCase();

        return userLower.contains(queryLower);
      }).toList();
}