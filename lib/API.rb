class API  
#key a9ca6c61110b8a16ee8dd7a8d661ed33  

attr_reader :test, :artist_info

  def artist 
  
 # @artist_info = Nokogiri::HTML(open('http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=Cher&api_key=a9ca6c61110b8a16ee8dd7a8d661ed33&format=json'))
  binding.pry 
  end 
  
  
  
  def test_hash
    
#   test[:artist].keys
#   => [:name,
#     :mbid,
#     :url,
#     :image,
#    :streamable,
#    :ontour,
#    :stats,
#    :similar,
#    :tags,
#    :bio]
    
    #if if type the url into a browser this is what I see 
    
    @test = 
{
  "artist": {
    "name": "Cher",
    "mbid": "bfcc6d75-a6a5-4bc6-8282-47aec8531818",
    "url": "https://www.last.fm/music/Cher",
    "image": [
      {
        "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "small"
      },
      {
        "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "medium"
      },
      {
        "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "large"
      },
      {
        "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "extralarge"
      },
      {
        "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "mega"
      },
      {
        "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": ""
      }
    ],
    "streamable": "0",
    "ontour": "1",
    "stats": {
      "listeners": "1146261",
      "playcount": "16832059"
    },
    "similar": {
      "artist": [
        {
          "name": "Sonny & Cher",
          "url": "https://www.last.fm/music/Sonny+&+Cher",
          "image": [
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        },
        {
          "name": "Kylie Minogue",
          "url": "https://www.last.fm/music/Kylie+Minogue",
          "image": [
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        },
        {
          "name": "Madonna",
          "url": "https://www.last.fm/music/Madonna",
          "image": [
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        },
        {
          "name": "Barbra Streisand",
          "url": "https://www.last.fm/music/Barbra+Streisand",
          "image": [
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        },
        {
          "name": "Céline Dion",
          "url": "https://www.last.fm/music/C%C3%A9line+Dion",
          "image": [
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        }
      ]
    },
    "tags": {
      "tag": [
        {
          "name": "pop",
          "url": "https://www.last.fm/tag/pop"
        },
        {
          "name": "female vocalists",
          "url": "https://www.last.fm/tag/female+vocalists"
        },
        {
          "name": "80s",
          "url": "https://www.last.fm/tag/80s"
        },
        {
          "name": "dance",
          "url": "https://www.last.fm/tag/dance"
        },
        {
          "name": "rock",
          "url": "https://www.last.fm/tag/rock"
        }
      ]
    },
    "bio": {
      "links": {
        "link": {
          "#text": "",
          "rel": "original",
          "href": "https://last.fm/music/Cher/+wiki"
        }
      },
      "published": "17 Feb 2006, 22:09",
      "summary": "Cher (born Cherilyn Sarkisian; May 20, 1946) is an Oscar- and Grammy-winning American singer and actress. A major figure for over five decades in the world of popular culture, she is often referred to as the Goddess of Pop for having first brought the sense of female autonomy and self-actualization into the entertainment industry. \n\nShe is known for her distinctive contralto and for having worked extensively across media, as well as for continuously reinventing both her music and image, the latter of which has been known to induce controversy. <a href=\"https://www.last.fm/music/Cher\">Read more on Last.fm</a>",
      "content": "Cher (born Cherilyn Sarkisian; May 20, 1946) is an Oscar- and Grammy-winning American singer and actress. A major figure for over five decades in the world of popular culture, she is often referred to as the Goddess of Pop for having first brought the sense of female autonomy and self-actualization into the entertainment industry. \n\nShe is known for her distinctive contralto and for having worked extensively across media, as well as for continuously reinventing both her music and image, the latter of which has been known to induce controversy.\n\nCher was born Cherilyn Sarkisian in El Centro, California, on May 20, 1946. She is of Armenian-American, Irish, English, German, and Cherokee ancestry. Cher first caught the eye and ear of the public in 1965 as one-half of the pop rock duo Sonny & Cher, which popularized a peculiar smooth sound that competed successfully with the predominant British Invasion and Motown Sound of the era. After a period in which the duo became obsolete, she re-emerged in the 1970's as a television personality with her shows The Sonny & Cher Comedy Hour and Cher, which attained great popularity.\n\nAt the same time, she established herself as a solo artist with hits such as \"Bang Bang (My Baby Shot Me Down)\", \"Gypsys, Tramps & Thieves\", \"Half-Breed\", and \"Dark Lady\", which dealt with taboo subjects in mainstream popular music. Throughout, she cemented her status as a fashion trendsetter with her daring outfits, and was noted as being the first woman to expose her navel on television. Cher's impact at that time, as described by Phill Marder from Goldmine magazine, \"led the way to advance feminine rebellion in the rock world,\" as she was \"the prototype of the female rock star, setting the standard for appearance and [...] attitude[.]\"\n\nIn 1983 Cher made a critically acclaimed appearance on Broadway and starred in the film Silkwood, which earned her a nomination for the Academy Award for Best Supporting Actress. In the following years, she became an acclaimed film actress by starring in a string of hit films, including Mask, The Witches of Eastwick, and Moonstruck, for which she won the Academy Award for Best Actress in 1988. At the same time, she established herself as a \"serious rock and roller\" by releasing a series of rock albums and hit singles such as \"I Found Someone\", \"If I Could Turn Back Time\", and \"The Shoop Shoop Song (It's in His Kiss)\".\n\nShe made her directing debut with the film If These Walls Could Talk in 1996 and released the biggest-selling single of her career thus far, \"Believe\", which revolutionized the recording industry because of its pioneer use of Auto-Tune (also known as the \"Cher effect\"). Throughout the 2000's she embarked on a series of concert tours that were among the highest-grossing of all-time.\n\nCher has won an Academy Award, a Grammy Award, an Emmy Award, three Golden Globe Awards, and the Best Actress Award at the Cannes Film Festival for her work in film, music and television. She is the only person  to receive all of these awards. She is also the only artist to have notched a number-one single on a Billboard chart in each of the past six decades. Recognized as one of the best-selling music artists of all time, she has sold more than 100 million solo albums worldwide and 40 million records as part of Sonny & Cher.\n\nOfficial website: http://www.cher.com/ <a href=\"https://www.last.fm/music/Cher\">Read more on Last.fm</a>. User-contributed text is available under the Creative Commons By-SA License; additional terms may apply."
    }
  }
}
    
  end 
end 