.class public Lcom/biznessapps/fragments/shoppingcart/XMLUtils;
.super Ljava/lang/Object;
.source "XMLUtils.java"


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "Category"

.field private static final CATEGORY_ID:Ljava/lang/String; = "CategoryID"

.field private static final CATEGORY_NAME:Ljava/lang/String; = "CategoryName"

.field private static final PRODUCT:Ljava/lang/String; = "Product"

.field private static final PRODUCT_CODE:Ljava/lang/String; = "ProductCode"

.field private static final PRODUCT_DESCRIPTION:Ljava/lang/String; = "ProductDescription"

.field private static final PRODUCT_IMAGE:Ljava/lang/String; = "PhotoURL"

.field private static final PRODUCT_NAME:Ljava/lang/String; = "ProductName"

.field private static final PRODUCT_PRICE:Ljava/lang/String; = "ProductPrice"

.field private static final PRODUCT_SMALL_IMAGE:Ljava/lang/String; = "PhotoURLSmall"

.field private static cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

.field public static volusionStorelistHaveMoreData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ParseGoogleCheckoutResponseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 195
    const/4 v3, 0x0

    .line 197
    .local v3, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 198
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 199
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 200
    .local v5, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 201
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 204
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v7, :cond_1

    .line 205
    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 206
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "xmlNodeName":Ljava/lang/String;
    const-string v6, "redirect-url"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 211
    .end local v4    # "xmlNodeName":Ljava/lang/String;
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 214
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v3

    .line 216
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseVolusionStoreCategoryList(Ljava/lang/String;Ljava/util/Map;ILjava/util/List;)Ljava/util/List;
    .locals 20
    .param p0, "urlString"    # Ljava/lang/String;
    .param p2, "resultLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;>;I",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "categoryProducts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;>;"
    .local p3, "categoryItemsCach":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v5, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    const/4 v2, 0x0

    .line 57
    .local v2, "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    const/4 v11, 0x0

    .line 60
    .local v11, "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    .line 61
    .local v9, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 62
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 64
    .local v17, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 65
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    .line 66
    .local v15, "urlConnection":Ljava/net/HttpURLConnection;
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v10, "in":Ljava/io/InputStream;
    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 70
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 72
    .local v8, "eventType":I
    const/4 v13, 0x0

    .local v13, "resultCounter":I
    move-object v12, v11

    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .local v12, "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v3, v2

    .line 74
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .local v3, "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_e

    :try_start_1
    sget-boolean v18, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseThreadRunning:Z

    if-eqz v18, :cond_e

    .line 77
    move/from16 v0, p2

    if-ne v13, v0, :cond_0

    .line 78
    const/16 v18, 0x1

    sput-boolean v18, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->volusionStorelistHaveMoreData:Z

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .line 139
    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v8    # "eventType":I
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v13    # "resultCounter":I
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :goto_1
    return-object v5

    .line 82
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v8    # "eventType":I
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v13    # "resultCounter":I
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v17    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_8

    .line 83
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 85
    .local v16, "xmlNodeName":Ljava/lang/String;
    const-string v18, "Product"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 86
    new-instance v11, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    invoke-direct {v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .line 130
    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v16    # "xmlNodeName":Ljava/lang/String;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :goto_2
    :try_start_2
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    move-object v12, v11

    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v3, v2

    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto :goto_0

    .line 87
    .restart local v16    # "xmlNodeName":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v18, "ProductCode"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 88
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setProductCode(Ljava/lang/String;)V

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto :goto_2

    .line 89
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_2
    const-string v18, "ProductName"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 90
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setProductName(Ljava/lang/String;)V

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto :goto_2

    .line 91
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_3
    const-string v18, "ProductDescription"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 92
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setProductDescription(Ljava/lang/String;)V

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto :goto_2

    .line 93
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_4
    const-string v18, "ProductPrice"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 94
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setProductPrice(F)V

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto :goto_2

    .line 95
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_5
    const-string v18, "Category"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 96
    new-instance v2, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    invoke-direct {v2}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;-><init>()V

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    goto :goto_2

    .line 97
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_6
    const-string v18, "CategoryID"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 98
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->setCatId(Ljava/lang/String;)V

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto/16 :goto_2

    .line 99
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_7
    const-string v18, "CategoryName"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 100
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "catName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->setCatName(Ljava/lang/String;)V

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .line 102
    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto/16 :goto_2

    .line 104
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v4    # "catName":Ljava/lang/String;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .end local v16    # "xmlNodeName":Ljava/lang/String;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v8, v0, :cond_d

    .line 105
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 106
    .restart local v16    # "xmlNodeName":Ljava/lang/String;
    const-string v18, "Category"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 107
    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->getCatName()Ljava/lang/String;

    move-result-object v4

    .line 108
    .restart local v4    # "catName":Ljava/lang/String;
    sget-object v18, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryTable()Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 109
    sget-object v18, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryTable()Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    if-eqz p3, :cond_9

    .line 112
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_9
    add-int/lit8 v13, v13, 0x1

    .line 116
    :cond_a
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 118
    .local v6, "currentCategoryProductList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    if-nez v6, :cond_b

    .line 119
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "currentCategoryProductList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .restart local v6    # "currentCategoryProductList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_b
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .line 124
    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto/16 :goto_2

    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v4    # "catName":Ljava/lang/String;
    .end local v6    # "currentCategoryProductList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_c
    const-string v18, "Product"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 125
    invoke-virtual {v12}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 126
    sget-object v18, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v18

    invoke-virtual {v12}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v16    # "xmlNodeName":Ljava/lang/String;
    :cond_d
    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto/16 :goto_2

    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_e
    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .line 138
    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v8    # "eventType":I
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v13    # "resultCounter":I
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :goto_3
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, " ************************ Parsed all categories"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 133
    :catch_0
    move-exception v7

    .line 134
    .local v7, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 135
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 136
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 135
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v8    # "eventType":I
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "in":Ljava/io/InputStream;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v13    # "resultCounter":I
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v17    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v7

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto :goto_5

    .line 133
    .end local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :catch_3
    move-exception v7

    move-object v11, v12

    .end local v12    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v11    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    move-object v2, v3

    .end local v3    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v2    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    goto :goto_4
.end method

.method public static updateFeaturedProductsProperties(Ljava/lang/String;)V
    .locals 13
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 149
    const/4 v6, 0x0

    .line 151
    .local v6, "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 152
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 153
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 155
    .local v10, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 157
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    .local v5, "in":Ljava/io/InputStream;
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 161
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 164
    .local v3, "eventType":I
    :cond_0
    :goto_0
    if-eq v3, v12, :cond_3

    .line 165
    const/4 v11, 0x2

    if-ne v3, v11, :cond_1

    .line 166
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "xmlNodeName":Ljava/lang/String;
    const-string v11, "ProductName"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 169
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "currentProductName":Ljava/lang/String;
    sget-object v11, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v11}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    move-object v6, v0

    .line 171
    if-eqz v6, :cond_0

    .line 182
    .end local v1    # "currentProductName":Ljava/lang/String;
    .end local v9    # "xmlNodeName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 173
    .restart local v9    # "xmlNodeName":Ljava/lang/String;
    :cond_2
    const-string v11, "PhotoURLSmall"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 174
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setSmallImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 185
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v9    # "xmlNodeName":Ljava/lang/String;
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    .line 175
    .restart local v3    # "eventType":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v9    # "xmlNodeName":Ljava/lang/String;
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_1
    const-string v11, "PhotoURL"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 176
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setImageUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 187
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    .end local v9    # "xmlNodeName":Ljava/lang/String;
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 177
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "eventType":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v9    # "xmlNodeName":Ljava/lang/String;
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_2
    const-string v11, "ProductPrice"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 178
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v6, v11}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->setProductPrice(F)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
