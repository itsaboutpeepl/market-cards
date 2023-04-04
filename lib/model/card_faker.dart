import 'package:marketing_cards/model/marketing_card.dart';
import 'package:marketing_cards/model/photos.dart';

List<MarketingCard> listOfMarketingCards = [
  MarketingCard(
    id: 1,
    name: 'Test card 1 with name',
    longDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed'
        ' do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
        ' Ut enim ad minim veniam, quis nostrud exercitation ullamco '
        'laboris nisi ut aliquip ex ea commodo consequat. ',
    photos: [
      Photos(
        id: 10,
        productId: 1,
        url:
            'https://fastly.picsum.photos/id/726/1000/2000.jpg?hmac=kQVofTJXDr34UOmssmBzjzTK6DZpFg7Yfh4jZ2fERDY',
      ),
      Photos(
        id: 11,
        productId: 1,
        url:
            'https://fastly.picsum.photos/id/423/1300/2000.jpg?hmac=V2DjefYyi5u9Nylz7IAuKrYo_6LhsOdC6P0L7FqWQ-Q',
      )
    ],
    rawPrice: 50,
    vendor: 'Vegi',
    stock: 4,
    shortDescription: '',
  ),
  MarketingCard(
    id: 2,
    name: 'Test card 2 with name',
    longDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed'
        ' do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
        ' Ut enim ad minim veniam, quis nostrud exercitation ullamco '
        'laboris nisi ut aliquip ex ea commodo consequat. ',
    photos: [
      Photos(
        id: 12,
        productId: 2,
        url:
            'https://fastly.picsum.photos/id/836/300/500.jpg?hmac=s0ySy9H5PH4gztqO4A0WxBOGCyDQLWR2DlvzuyHwMGg',
      ),
      Photos(
        id: 13,
        productId: 2,
        url:
            'https://fastly.picsum.photos/id/423/1300/2000.jpg?hmac=V2DjefYyi5u9Nylz7IAuKrYo_6LhsOdC6P0L7FqWQ-Q',
      )
    ],
    rawPrice: 50,
    vendor: 'Vegi',
    stock: 4,
    shortDescription: '',
  ),
  MarketingCard(
    id: 3,
    name: 'Test card 3 with name',
    longDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed'
        ' do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
        ' Ut enim ad minim veniam, quis nostrud exercitation ullamco '
        'laboris nisi ut aliquip ex ea commodo consequat. ',
    photos: [
      Photos(
        id: 14,
        productId: 3,
        url:
            'https://fastly.picsum.photos/id/870/1300/2000.jpg?hmac=w_rYtr_bi_KfzX7yPNphGSL3fHvgLi82EWW2lPBoJ3Q',
      ),
      Photos(
        id: 15,
        productId: 3,
        url:
            'https://fastly.picsum.photos/id/870/1300/2000.jpg?hmac=w_rYtr_bi_KfzX7yPNphGSL3fHvgLi82EWW2lPBoJ3Q',
      )
    ],
    rawPrice: 50,
    vendor: 'Vegi',
    stock: 4,
    shortDescription: '',
  ),
  MarketingCard(
    id: 4,
    name: 'Test card 4 with name',
    longDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed'
        ' do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
        ' Ut enim ad minim veniam, quis nostrud exercitation ullamco '
        'laboris nisi ut aliquip ex ea commodo consequat. ',
    photos: [
      Photos(
        id: 16,
        productId: 4,
        url:
            'https://fastly.picsum.photos/id/870/1300/2000.jpg?hmac=w_rYtr_bi_KfzX7yPNphGSL3fHvgLi82EWW2lPBoJ3Q',
      ),
      Photos(
        id: 17,
        productId: 4,
        url:
            'https://fastly.picsum.photos/id/870/1300/2000.jpg?hmac=w_rYtr_bi_KfzX7yPNphGSL3fHvgLi82EWW2lPBoJ3Q',
      )
    ],
    rawPrice: 50,
    vendor: 'Vegi',
    stock: 4,
    shortDescription: '',
  ),
  MarketingCard(
    id: 5,
    name: 'Test card 5 with name',
    longDescription:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed'
        ' do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
        ' Ut enim ad minim veniam, quis nostrud exercitation ullamco '
        'laboris nisi ut aliquip ex ea commodo consequat. ',
    photos: [
      Photos(
        id: 118,
        productId: 5,
        url:
            'https://fastly.picsum.photos/id/423/1300/2000.jpg?hmac=V2DjefYyi5u9Nylz7IAuKrYo_6LhsOdC6P0L7FqWQ-Q',
      ),
      Photos(
        id: 19,
        productId: 5,
        url:
            'https://fastly.picsum.photos/id/870/1300/2000.jpg?hmac=w_rYtr_bi_KfzX7yPNphGSL3fHvgLi82EWW2lPBoJ3Q',
      )
    ],
    rawPrice: 50,
    vendor: 'Vegi',
    stock: 4,
    shortDescription: '',
  ),
];

const imageList = [
  '1.jpg',
  '2.jpg',
  '3.jpg',
  '4.jpg',
];

// const List<String> image1s = [
//   'https://fastly.picsum.photos/id/726/1000/2000.jpg?hmac=kQVofTJXDr34UOmssmBzjzTK6DZpFg7Yfh4jZ2fERDY',
//   'https://fastly.picsum.photos/id/423/1300/2000.jpg?hmac=V2DjefYyi5u9Nylz7IAuKrYo_6LhsOdC6P0L7FqWQ-Q',
//   'https://fastly.picsum.photos/id/870/1300/2000.jpg?hmac=w_rYtr_bi_KfzX7yPNphGSL3fHvgLi82EWW2lPBoJ3Q',
//   'https://fastly.picsum.photos/id/284/1300/2000.jpg?hmac=NQarcB_cXQn94Ks6dY2b0l6vrvE0Lrzejdswm6jk4Rs'
// ];
