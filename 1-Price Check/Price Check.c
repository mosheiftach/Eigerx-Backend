#include <stdio.h>
#include <string.h>


int priceCheck(char **products, float productPrices[], char **productSold, float soldPrice[], int soldSize, int productSize) {
    
    int errors = 0;

    for (int i = 0; i < soldSize; i++) {
        for (int j = 0; j < productSize; j++) {
            if (productSold[i] == products[j]) {
                if (soldPrice[i] != productPrices[j]) {
                    printf("%s  ",productSold[i]);
                    errors++;
                    break;
                }
            }
        }
    }
    
    return errors;
}


int main() {
    
    char *products[3] = {"eggs","milk","cheese"};
    int sizeProducts = sizeof(products) / sizeof(products[0]);
    char *productsSold[6] = {"eggs","eggs","milk","milk","milk","eggs"};
    int sizeProductsSold = sizeof(productsSold) / sizeof(productsSold[0]);
    float productPrice[] = {2.89, 3.29, 5.79};
    float SoldPrice[] = {2.89, 2.99, 5.97, 3.29,1.1,0.5};

    int result = priceCheck(
    	products,
    	productPrice,
    	productsSold,
    	SoldPrice,
    	sizeProductsSold,
    	sizeProducts
    );
   
    printf("%d\n",result);
    
    return 0;
}