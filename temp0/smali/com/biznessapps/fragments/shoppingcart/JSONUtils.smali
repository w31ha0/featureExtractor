.class public Lcom/biznessapps/fragments/shoppingcart/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "api_key"

.field private static final API_SECRET:Ljava/lang/String; = "api_secret"

.field private static final APPLICATION_ID:Ljava/lang/String; = "pgateway_applicationID"

.field private static final BACKGROUND:Ljava/lang/String; = "background"

.field private static final CATEGORIES:Ljava/lang/String; = "Catagories"

.field private static final CATEGORY_ID:Ljava/lang/String; = "catid"

.field private static final CATEGORY_NAME:Ljava/lang/String; = "catname"

.field private static final GATWAY_PASSWORD:Ljava/lang/String; = "pgateway_password"

.field private static final GATWAY_SIGNATURE:Ljava/lang/String; = "pgateway_signature"

.field private static final GATWAY_USERNAME:Ljava/lang/String; = "pgateway_username"

.field private static final MERCHANT_ID:Ljava/lang/String; = "merchant_id"

.field private static final MERCHANT_KEY:Ljava/lang/String; = "merchant_key"

.field private static final PAYMENT_GATWAYS:Ljava/lang/String; = "PaymentGateways"

.field private static final PRODUCTS:Ljava/lang/String; = "Products"

.field private static final PRODUCT_CODE:Ljava/lang/String; = "product_id"

.field private static final PRODUCT_DESCRIPTION:Ljava/lang/String; = "product_Description"

.field private static final PRODUCT_IMAGE:Ljava/lang/String; = "product_image"

.field private static final PRODUCT_NAME:Ljava/lang/String; = "product_name"

.field private static final PRODUCT_PRICE:Ljava/lang/String; = "product_prize"

.field private static final RESPONSE:Ljava/lang/String; = "response"

.field private static final STORE_DOMAIN:Ljava/lang/String; = "base_domain"

.field private static final STORE_NAME:Ljava/lang/String; = "store_name"

.field private static cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseCustomeCartCategoryList(Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .param p0, "customeStoreUrlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v4, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    const/4 v2, 0x0

    .line 62
    .local v2, "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    const/4 v13, 0x0

    .line 63
    .local v13, "inputStream":Ljava/io/InputStream;
    const-string v19, ""

    .line 66
    .local v19, "resultStr":Ljava/lang/String;
    :try_start_0
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 67
    .local v10, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 68
    .local v11, "httppost":Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v10, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 69
    .local v9, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 70
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 75
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    .local v17, "reader":Ljava/io/BufferedReader;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v20, "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 78
    .local v16, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 79
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v16    # "line":Ljava/lang/String;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 102
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "Exception Parsing Custome Type Shopping Cart Categories"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v4

    .line 81
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v11    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v16    # "line":Ljava/lang/String;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 85
    new-instance v21, Lorg/json/JSONTokener;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 86
    .local v15, "jsonObject":Lorg/json/JSONObject;
    const-string v21, "response"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 87
    .local v18, "response":Lorg/json/JSONObject;
    const-string v21, "Catagories"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 88
    .local v5, "categoriesJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v21

    if-eqz v21, :cond_0

    .line 89
    const/4 v12, 0x0

    .local v12, "i":I
    move-object v3, v2

    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .local v3, "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_3

    .line 90
    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 91
    .local v14, "jsonObj":Lorg/json/JSONObject;
    new-instance v2, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    invoke-direct {v2}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :try_start_3
    const-string v21, "catid"

    move-object/from16 v0, v21

    invoke-static {v14, v0}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->setCatId(Ljava/lang/String;)V

    .line 93
    const-string v21, "catname"

    move-object/from16 v0, v21

    invoke-static {v14, v0}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "catname":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->setCatName(Ljava/lang/String;)V

    .line 95
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v21, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual/range {v21 .. v21}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryTable()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 97
    sget-object v21, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual/range {v21 .. v21}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryTable()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    :cond_2
    add-int/lit8 v12, v12, 0x1

    move-object v3, v2

    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto :goto_3

    .line 101
    .end local v6    # "catname":Ljava/lang/String;
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto/16 :goto_1

    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :cond_3
    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto :goto_2
.end method

.method public static parseCustomeCartProductList(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 30
    .param p0, "appCode"    # Ljava/lang/String;
    .param p1, "tabId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "categoryProducts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;>;"
    sget-object v26, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual/range {v26 .. v26}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryTable()Ljava/util/Map;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 122
    .local v3, "catKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 123
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 124
    .local v4, "catName":Ljava/lang/String;
    const-string v27, "http://biznessapps.com/iphone/cart_get_product.php?app_code=%s&tab_id=%s&cat_id=%s"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v26, 0x0

    aput-object p0, v28, v26

    const/16 v26, 0x1

    aput-object p1, v28, v26

    const/16 v29, 0x2

    sget-object v26, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual/range {v26 .. v26}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryTable()Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    invoke-virtual/range {v26 .. v26}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->getCatId()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "customeStoreProductsUrlString":Ljava/lang/String;
    const/4 v14, 0x0

    .line 128
    .local v14, "inputStream":Ljava/io/InputStream;
    const-string v24, ""

    .line 132
    .local v24, "resultStr":Ljava/lang/String;
    :try_start_0
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 133
    .local v10, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v11, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 134
    .local v11, "httppost":Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v10, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 135
    .local v9, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 136
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 138
    new-instance v22, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 139
    .local v22, "reader":Ljava/io/BufferedReader;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v25, "sb":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .line 141
    .local v18, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 142
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v18    # "line":Ljava/lang/String;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 175
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 144
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v11    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedReader;
    .restart local v25    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 145
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 148
    new-instance v26, Lorg/json/JSONTokener;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 149
    .local v17, "jsonObject":Lorg/json/JSONObject;
    const-string v26, "response"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 150
    .local v23, "response":Lorg/json/JSONObject;
    const-string v26, "Products"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 151
    .local v21, "productsJsonArray":Lorg/json/JSONArray;
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v26

    if-eqz v26, :cond_0

    .line 152
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_0

    .line 153
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 154
    .local v16, "jsonObj":Lorg/json/JSONObject;
    new-instance v19, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    invoke-direct/range {v19 .. v19}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;-><init>()V

    .line 155
    .local v19, "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    const-string v26, "product_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setProductCode(Ljava/lang/String;)V

    .line 156
    const-string v26, "product_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 157
    .local v20, "productName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v20}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setProductName(Ljava/lang/String;)V

    .line 158
    const-string v26, "product_prize"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setProductPrice(F)V

    .line 159
    const-string v26, "product_image"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "imageUrl":Ljava/lang/String;
    const-string v26, "http"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 161
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "http://www.biznessapps.com"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 162
    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setImageUrl(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setSmallImageUrl(Ljava/lang/String;)V

    .line 164
    const-string v26, "product_Description"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setProductDescription(Ljava/lang/String;)V

    .line 165
    sget-object v26, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual/range {v26 .. v26}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_3

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v5, "catProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v5    # "catProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    :cond_3
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 178
    .end local v4    # "catName":Ljava/lang/String;
    .end local v6    # "customeStoreProductsUrlString":Ljava/lang/String;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v12    # "i":I
    .end local v13    # "imageUrl":Ljava/lang/String;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "jsonObj":Lorg/json/JSONObject;
    .end local v17    # "jsonObject":Lorg/json/JSONObject;
    .end local v18    # "line":Ljava/lang/String;
    .end local v19    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .end local v20    # "productName":Ljava/lang/String;
    .end local v21    # "productsJsonArray":Lorg/json/JSONArray;
    .end local v22    # "reader":Ljava/io/BufferedReader;
    .end local v23    # "response":Lorg/json/JSONObject;
    .end local v24    # "resultStr":Ljava/lang/String;
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method

.method public static parseStoreInfoList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Store;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v9, "storeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Store;>;"
    :try_start_0
    new-instance v11, Lorg/json/JSONTokener;

    invoke-direct {v11, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 186
    .local v4, "object":Lorg/json/JSONObject;
    const-string v11, "response"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 187
    .local v7, "response":Lorg/json/JSONObject;
    const-string v11, "Stores"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 188
    .local v8, "storeJsonArray":Lorg/json/JSONArray;
    const-string v11, "PaymentGateways"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 189
    .local v5, "paymentGatwayesJsonArray":Lorg/json/JSONArray;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 193
    .local v6, "paypalObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_0

    .line 194
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 196
    .local v3, "jsonObj":Lorg/json/JSONObject;
    new-instance v10, Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-direct {v10}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;-><init>()V

    .line 197
    .local v10, "storeObj":Lcom/biznessapps/fragments/shoppingcart/entities/Store;
    const-string v11, "store_name"

    invoke-static {v3, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setStoreName(Ljava/lang/String;)V

    .line 198
    const-string v11, "api_secret"

    invoke-static {v3, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setApiSecret(Ljava/lang/String;)V

    .line 199
    const-string v11, "api_key"

    invoke-static {v3, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setApikey(Ljava/lang/String;)V

    .line 200
    const-string v11, "base_domain"

    invoke-static {v3, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setDomain(Ljava/lang/String;)V

    .line 201
    const-string v11, "background"

    invoke-static {v4, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setBackgroundURL(Ljava/lang/String;)V

    .line 204
    const-string v11, "pgateway_applicationID"

    invoke-static {v6, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "appid":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setPaypalApplicationID(Ljava/lang/String;)V

    .line 206
    const-string v11, "pgateway_username"

    invoke-static {v6, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setPaypalUsername(Ljava/lang/String;)V

    .line 207
    const-string v11, "pgateway_password"

    invoke-static {v6, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setPaypalPassword(Ljava/lang/String;)V

    .line 208
    const-string v11, "pgateway_signature"

    invoke-static {v6, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setPaypalSignature(Ljava/lang/String;)V

    .line 215
    const-string v11, "merchant_id"

    invoke-static {v6, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setGoogleCheckoutMerchantID(Ljava/lang/String;)V

    .line 216
    const-string v11, "merchant_key"

    invoke-static {v6, v11}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->getValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setGoogleCheckoutMerchantKey(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "appid":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "paymentGatwayesJsonArray":Lorg/json/JSONArray;
    .end local v6    # "paypalObject":Lorg/json/JSONObject;
    .end local v7    # "response":Lorg/json/JSONObject;
    .end local v8    # "storeJsonArray":Lorg/json/JSONArray;
    .end local v10    # "storeObj":Lcom/biznessapps/fragments/shoppingcart/entities/Store;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 225
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v9
.end method
