.class public Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "GoogleCheckoutFragment.java"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

.field private progressBar:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 42
    invoke-static {}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->progressBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private composeGoogleCheckoutRequestString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 143
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v7, "<checkout-shopping-cart xmlns=\'http://checkout.google.com/schema/2\'> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v7, " <shopping-cart> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v7, " <items> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v1

    .line 147
    .local v1, "checkoutProducts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 148
    .local v2, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 150
    .local v6, "thisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    .local v4, "productName":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 152
    .local v3, "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 153
    .local v5, "quantity":Ljava/lang/Integer;
    const-string v7, " <item> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " <item-name>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</item-name> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " <item-description>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</item-description> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " <unit-price currency=\'USD\'>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</unit-price>  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " <quantity>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</quantity>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v7, " </item> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 160
    .end local v3    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .end local v4    # "productName":Ljava/lang/String;
    .end local v5    # "quantity":Ljava/lang/Integer;
    .end local v6    # "thisEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    const-string v7, " </items> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v7, " </shopping-cart> "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v7, " <checkout-flow-support>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v7, " <merchant-checkout-flow-support>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v7, " <tax-tables>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const-string v7, " <default-tax-table>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v7, " <tax-rules>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v7, " <default-tax-rule>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v7, " <rate>0.06</rate>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v7, " <tax-area>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v7, " <world-area/>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const-string v7, " </tax-area>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v7, " </default-tax-rule>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v7, " </tax-rules>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v7, " </default-tax-table>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v7, " </tax-tables>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v7, " </merchant-checkout-flow-support>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string v7, " </checkout-flow-support>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v7, " </checkout-shopping-cart>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private postGoogleCheckoutRequest()Ljava/lang/String;
    .locals 17

    .prologue
    .line 104
    const/4 v10, 0x0

    .line 105
    .local v10, "responseUrl":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 106
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v13, "https://checkout.google.com/api/checkout/v2/request/Merchant/%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getGoogleCheckoutMerchantID()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 109
    .local v4, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Basic "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v15}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v15

    invoke-virtual {v15}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getGoogleCheckoutMerchantID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v15}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v15

    invoke-virtual {v15}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getGoogleCheckoutMerchantKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "auth":Ljava/lang/String;
    const-string v13, "Authorization"

    invoke-virtual {v4, v13, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->composeGoogleCheckoutRequestString()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "requestStr":Ljava/lang/String;
    new-instance v12, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v12, v8}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 117
    .local v12, "se":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v4, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 120
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 121
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 122
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v11, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 125
    .local v6, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "requestStr":Ljava/lang/String;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v10

    .line 128
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "requestStr":Ljava/lang/String;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 129
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "responce"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->ParseGoogleCheckoutResponseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 131
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "responseUrl "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    sget v1, Lcom/biznessapps/layout/R$layout;->shop_google_checkout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->root:Landroid/view/ViewGroup;

    .line 50
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->google_checkout_webview:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->webView:Landroid/webkit/WebView;

    .line 51
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$1;-><init>(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 63
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    const-string v2, "Loading GoogleChekout"

    const-string v3, "Loading..."

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->progressBar:Landroid/app/ProgressDialog;

    .line 66
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;-><init>(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 90
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->postGoogleCheckoutRequest()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->root:Landroid/view/ViewGroup;

    return-object v1
.end method
