.class Lcom/amazon/device/ads/IntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activity:Landroid/app/Activity;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private extras:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->extras:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public fireIntent()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/ads/IntentBuilder;->clazz:Ljava/lang/Class;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    iget-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->extras:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    move v0, v3

    .line 86
    :goto_1
    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 74
    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 78
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 80
    goto :goto_1

    :cond_2
    move v0, v3

    .line 82
    goto :goto_1
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/amazon/device/ads/IntentBuilder;->activity:Landroid/app/Activity;

    .line 41
    return-object p0
.end method

.method public withClass(Ljava/lang/Class;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/amazon/device/ads/IntentBuilder;"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amazon/device/ads/IntentBuilder;->clazz:Ljava/lang/Class;

    .line 50
    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amazon/device/ads/IntentBuilder;->context:Landroid/content/Context;

    .line 32
    return-object p0
.end method

.method public withExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/IntentBuilder;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/IntentBuilder;->extras:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object p0
.end method
