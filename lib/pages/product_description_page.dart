import 'package:flutter/material.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details', 
        style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxETEhUTEhIWFhIWFxcSFxUXFxgVFRUVFxUXFhYXFxgaHSkgGBolGxUVITEiJiorMC4uGB8zODMuNyktLisBCgoKDg0NFQ8PFS0dFRkrNzIrLS0rKystKzctLS0tLS0rKysrLTItLSstKys3LSsrKy0uLTctNy0rKy0tKy4rK//AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAAcBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xAA+EAACAQIDBAcFBgQGAwAAAAAAAQIDEQQSIQUxQVEGBxNhcYGRIjJSobEUI0JyksEzYqLwQ1OCwtHhRLLx/8QAFQEBAQAAAAAAAAAAAAAAAAAAAAH/xAAWEQEBAQAAAAAAAAAAAAAAAAAAEQH/2gAMAwEAAhEDEQA/AO2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJSSV27Jat8EgAMDX6SqM5vsJvDQlCEsTeGTNOUYpxje8opyWaXDXkzPgQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxW2G6k4YeLaz/AHlSSunGnBp6NSTjJyyW3reZUweJx1OhWxNatJRpwo05OT4RvK6StfV2stbt6cgMP1q7Rp4bZdWmrRdWKoU4rR6tZmvyxu7+BoOxOt/GKopYiEJ0Xo6cY5ZxV98ZX9ppcHvtw3modM+ktXaGJlWndQXs0ocIQvovF72+L7kjD0tAPWeCxcKtOFWnJSpzipxktzi1dMrGjdTFWUtmQzbo1KsY/lzX+rkbyAAAAAp4nEQpxc6kowhFXlKTUYpc22BUBZYHatGtKUISeeCjJxlGUHlnfJJKSV4uz1Wl00XoAAAAAAAAAAAAAAAAAAAAAAAKWKxMKcJVKk1CEVmlKTtGKXFsCpOaSbbSSV23oklvbPO3Wd0q+24qcaFSX2VKMMt2oVJQbefLyu9PBPwyXWH1jVcTOpRwda2Dy9m7RtKrdJzu5K6XBWtx33OfUloBN2ehQlKyfcXBIrKScvdTTkv5b6/Io9Q9D9lLC4LD0Lawpxzd85LNN/qbMwIyTV1qnqn3PcCAAALDbe2aGEpOtiJqEE1G9m25Pcopat6P0ZqE8XS2ntHCqEu0wNKhLGW1y1K/aKnGM4vjDfZ7vMwnX3tCCjhcPf226le3KKSpp+eeXozU+qTbTo7SpQbfZ11Og1f2VNpTjK3O9JR8wO9YzDJzp1UvvIPJdb3Tm0pxfd7svGCLsoYWt2izr3H7j+JfH4Ph3a8SuAAAAAAAAAAAAAAAAAAIgQBhNrdL8BhrqtiaaktHFPPJeMY3aOYdNOtmvJqGAXZ07PNUlH7x2dllT0imteeq3O6QdM6X9LcNs+mp15XnK6hSjbPNrfbklxZw7pr08xO0V2cl2OHjJS7KLvma3OpL8Vu6y7jWsbi6mIm6lecqlR/jk3KVuSfBdxRVNrSWnJ9xQhvt+JfNE27wK3Ywa0u5W38v2KCs3rdNATksyd0nz/Yly8wNx6I9Z+KwMY0qse3wy0UW7VKa/knxj3NeaOobL61tk1opuu6UuMasJRa/1JOL9Tz64ltPCxfc+7/h/sQemqvWFsmKu8dS8m5P0SNW2/114KkmsNTnXnwb+6p372/af6Thf2D+b1TX7FSnhIrm/l82BfbV2zXxtepisRK852irK0YxW6MFwiv3LOrUlFKcW008yabjLya1TKqV+5d27y5vvKeIaKPW2AnF0qbhpBwg4pblFxWW3lYrms9WeNdbZeDm96pKk/Gk3Sv/AEGzEAAAAAAAAAA1fpP09wOCbhUm6lZf4VK0pr8zvaHm79wG0A5BiuumV/usHG3OdVt+kY/uY+v1w45+5SoR/wBM5f7kB28lq1IxWaTUYre20kvNnnjHdY+1Kn/kuC5U4wh87Zvma7jdoV6zvVq1Kj5znKf1YHeOkfWVgMPCSp1FXrJPLCndxcuClUSyxV/F9xyfpF1g7QxacZVOypvTs6N4Jr+aXvP1XgaskEBSnCTs43bSS1bei3K7+hUouL956brFSM7LTnqUZUo3Ts+ej5briiecMrvBezy/dE0H2i1vvtrdehM6j5fMklUduBFSKi1Je1ovXcMQk9U9SLrNdxK6jAloSaVm3fza+aKuf+9foymqj5kV4v1AjZ8fVf8ABCXk0RWnF/USXH5r9y0SZo8vS/7DOvhISj/94f8ARLIIjOo3xNp6IdBljafbTr5IOpKiowjmqOahmV29Iq3c/I1JnSOrLaUKWCxsp5msPOni2opOVra2u0tVSa8GwOr9AsJTpYKnSpRywjeyu37/AN5ver982A1Lqx2xSxOEz0vwyUJR19iSpQ9i796yy6rTU20AAAAAAAAC02xXlToVqkfehSqTXjGDa+aPKWZyu5NuTbbb3tvVt97Z61r080ZR+JOPqrHnep1e4nsY1MPJVnHNSqwXszjVpycJ5VK2aN1dbnZrQDU0iaxNisPUpSyVYShP4ZxcJejW4pKQFSxuvRXoLHGYZ1e3lTnmaSdJunlTy3zOyk8yfut2tbfu0i5HO+fC3le9vC+vmBn9tdD8dhp5JUJzT92dKMqkJctyun3Oz8S02xKnBRw8KcM1N3q1V7U51Wvbjm3dnF+yktG03rcvNhdMsXh6tObrVKkI6OnKcnGUOK13Pk+DSLTpRQgq7q0v4OITxFNbnGM5yvBpbnGSkrdyAxLI3t4EtyCAn/v/AKJW/wC+XjzRCTEmRR/2uHkQXd6C68gBHR+JKyLTISklvaXfuKIpkU+Wn0Mns/o3ja2tLC1pLhLI4xfhKVk/UzWG6tNqT30Yw/PUgrfpbYGpN+pK13eXA6ZguqCu0u2xdOHOMISqfNuP0Mxh+qPCJpzxFeXcuzgn/S38wOMWJlVnGMoxnJRlZSipNKSV7KSXvJXe869trqkoy1wteVN/DU+8j5SVmvO/kV9i9VGFptSxNSVeXw27On5pNyl627gi66hai+w1I5Wn205qVtJLLCOj42aaOmHMulvTGhszsqdGMXVi4fcxVo06N/abtuvFNJc9eB0nDV41IRnB3jOKnF84yV0/RgVAAAAAAAADX9obLqU6zr4aEXGo716V8spySSVWnf2c9lZp2zaa6GenKxj8VtDKBYr7PiqdpwhVhdxcZxUsslvjKMleMlyeprm0+rHZ1XWEJ0Zc6ctP0yul5WL3adCM6nbU5OjX41IWtPkqsHpUXjquDRJR6TTpaYuk0l/j0U50nu1lD34ekl3lGm7Q6oKqu6GJhLlGpFwf6o5k/RGt7Q6vdp0v/Hc1zpyjP5XzfI7tgNpUq0c1KpCpHnGSfrbcXWYQeXsXgK1L+LSqU+HtwlD/ANki2TT3M9V3LHF7Hw1X+Lh6M/z0oS+qA8yQjfQS8NPqeiZ9C9mt3+xUfBRyr0WhUpdEdnRaawWHutzdKMn/AFJgecKftOy1k+C1b8kZXB9GsbV/h4Ss+/s5JeskkekKVKEPdjGP5Ul9CpmJCuF4Dqw2lUtmjTpL+eor+kFI2PAdT8f8fFt91KCj/VNu/odQuQLBqWB6t9mU99GVR86k5S/pVo/Iz+A2NhaP8HD0qffGEU/W1y+IiA5MgRFyiFiKiLjMQRsSyRG5I2Bzrpf0CqY3Hqs5xhh+zhGT3zlKLldRW5aZdW/I6XsOgqdCnTStGCyRXKEdIr0RjqWKhOeSLUrNZ3fSK32vxl3LdfW3HPRtbTcTREAAAAAAAEJRuWGKwCkZAAa5X2RLgY3E7Kq8EbrYg4IDl2J6Nzz54xcKn+ZBunP9UbNmS2didoUlab7ZX07SKUkuWaCV/Fpm+9kiHYrkBgqG1YtXnCUHxVnJeTSLqOMpv8cb8r6mSdCPIg8LHki0WXax+JeqISrQW+UV5ovPsVP4I+iJ1hoL8K9BRjZYumvxry1+hI8dDgpPwhN/sZfsVyIdihRh/tr4Uqj8kl83clnXrfhpLzlb6Jma7JDskKNdqfbH7vZR8VKX+5FwliNNId+st/ppxM12SI9kiUYRPEfBB6fFJa+m4g6uI/yo7vje/wDTuM52aHZotGE7evr9zw09tb9dHpot2vyJnWra2o8NLyW/XR927UzPZojkQowcpYjhTitOMm9fTcYPF7AxdaT7Wu3DX7uPsQs+DS95eNzecqGVEGt7O2G6aSvZLRJbkjPYem0ivYAAwAFwLAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/2Q==',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200,
              ),
            ),
            
            const SizedBox(height: 20),
            
            Text(
              'Puma Footwear',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 20),
            
            Text(
              'Product Description',
              style: TextStyle(
                fontSize: 16,
                height: 1.5
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Rs: 2000',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                labelText: 'Enter your Billing Address',
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                onPressed: () {
                  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}