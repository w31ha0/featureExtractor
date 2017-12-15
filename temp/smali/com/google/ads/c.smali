.class public final Lcom/google/ads/c;
.super Ljava/lang/Object;


# static fields
.field private static h:Ljava/lang/String;


# instance fields
.field private a:Lcom/google/ads/g;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;

.field private d:Ljava/util/Map;

.field private e:Landroid/location/Location;

.field private f:Z

.field private g:Z

.field private i:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/c;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/c;->a:Lcom/google/ads/g;

    iput-object v0, p0, Lcom/google/ads/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/c;->c:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/ads/c;->d:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/ads/c;->e:Landroid/location/Location;

    iput-boolean v1, p0, Lcom/google/ads/c;->f:Z

    iput-boolean v1, p0, Lcom/google/ads/c;->g:Z

    iput-object v0, p0, Lcom/google/ads/c;->i:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/Map;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/ads/c;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    const-string v1, "kw"

    iget-object v2, p0, Lcom/google/ads/c;->c:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/ads/c;->a:Lcom/google/ads/g;

    if-eqz v1, :cond_1

    const-string v1, "cust_gender"

    iget-object v2, p0, Lcom/google/ads/c;->a:Lcom/google/ads/g;

    invoke-virtual {v2}, Lcom/google/ads/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/google/ads/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "cust_age"

    iget-object v2, p0, Lcom/google/ads/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/google/ads/c;->e:Landroid/location/Location;

    if-eqz v1, :cond_3

    const-string v1, "uule"

    iget-object v2, p0, Lcom/google/ads/c;->e:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v1, p0, Lcom/google/ads/c;->f:Z

    if-eqz v1, :cond_4

    const-string v1, "testing"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/google/ads/c;->i:Ljava/util/Set;

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/ads/c;->i:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    :goto_0
    if-eqz v1, :cond_8

    const-string v1, "adtest"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/google/ads/c;->d:Ljava/util/Map;

    if-eqz v1, :cond_6

    const-string v1, "extras"

    iget-object v2, p0, Lcom/google/ads/c;->d:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0

    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    iget-boolean v1, p0, Lcom/google/ads/c;->g:Z

    if-nez v1, :cond_5

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "AdRequest.TEST_EMULATOR"

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To get test ads on this device, call adRequest.addTestDevice("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/google/ads/c;->g:Z

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/c;->f:Z

    return-void
.end method
