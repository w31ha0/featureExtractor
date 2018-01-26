.class public Lcom/biznessapps/fragments/shoppingcart/entities/Store;
.super Ljava/lang/Object;
.source "Store.java"


# instance fields
.field private apiSecret:Ljava/lang/String;

.field private apikey:Ljava/lang/String;

.field private appCode:Ljava/lang/String;

.field private background:Ljava/lang/String;

.field private bgDrawable:Landroid/graphics/drawable/Drawable;

.field private domain:Ljava/lang/String;

.field private googleCheckoutMerchantID:Ljava/lang/String;

.field private googleCheckoutMerchantKey:Ljava/lang/String;

.field private paypalApplicationID:Ljava/lang/String;

.field private paypalPassword:Ljava/lang/String;

.field private paypalSignature:Ljava/lang/String;

.field private paypalUsername:Ljava/lang/String;

.field private storeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->apiSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getApikey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->apikey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->appCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->bgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleCheckoutMerchantID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->googleCheckoutMerchantID:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleCheckoutMerchantKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->googleCheckoutMerchantKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalApplicationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->paypalApplicationID:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->paypalPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->paypalSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->paypalUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public setApiSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "apisecret"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->apiSecret:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setApikey(Ljava/lang/String;)V
    .locals 0
    .param p1, "apikey"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->apikey:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->appCode:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->bgDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    return-void
.end method

.method public setBackgroundURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->background:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->domain:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setGoogleCheckoutMerchantID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->googleCheckoutMerchantID:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setGoogleCheckoutMerchantKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->googleCheckoutMerchantKey:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setPaypalApplicationID(Ljava/lang/String;)V
    .locals 0
    .param p1, "paypalApplicationID"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->paypalApplicationID:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPaypalPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "paypalPassword"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->paypalPassword:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setPaypalSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "paypalSignature"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->paypalSignature:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setPaypalUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "paypalUsername"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->paypalUsername:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->storeName:Ljava/lang/String;

    .line 74
    return-void
.end method
