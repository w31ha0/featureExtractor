.class Lcom/wordloco/wordchallenge/view/ar;
.super Lcom/amazon/device/ads/DefaultAdListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/TestAmazon;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/TestAmazon;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ar;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-direct {p0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 189
    const-string v0, "SimpleAdSample"

    const-string v1, "Ad collapsed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 180
    const-string v0, "SimpleAdSample"

    const-string v1, "Ad expanded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    const-string v0, "SimpleAdSample"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad failed to load. Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ar;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->c(Lcom/wordloco/wordchallenge/view/TestAmazon;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ar;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eeeee onAdFailedToLoad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 153
    const-string v0, "SimpleAdSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdProperties;->getAdType()Lcom/amazon/device/ads/AdProperties$AdType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdProperties$AdType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ad loaded successfully."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ar;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eeeee onAdLoaded"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ar;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->a(Lcom/wordloco/wordchallenge/view/TestAmazon;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ar;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->b(Lcom/wordloco/wordchallenge/view/TestAmazon;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ar;->a:Lcom/wordloco/wordchallenge/view/TestAmazon;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/TestAmazon;->c(Lcom/wordloco/wordchallenge/view/TestAmazon;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    :cond_0
    return-void
.end method
