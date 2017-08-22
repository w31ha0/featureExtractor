.class public Lvpadn/e;
.super Ljava/lang/Object;
.source "CordovaLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field protected d:Landroid/location/LocationManager;

.field protected e:Z

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lvpadn/p;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lc/GeoBroker;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvpadn/p;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput v0, Lvpadn/e;->a:I

    .line 36
    const/4 v0, 0x2

    sput v0, Lvpadn/e;->b:I

    .line 37
    const/4 v0, 0x3

    sput v0, Lvpadn/e;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lc/GeoBroker;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/e;->e:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvpadn/e;->f:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/e;->h:Ljava/util/List;

    .line 46
    const-string v0, "[Cordova Location Listener]"

    iput-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lvpadn/e;->d:Landroid/location/LocationManager;

    .line 50
    iput-object p2, p0, Lvpadn/e;->g:Lc/GeoBroker;

    .line 51
    iput-object p3, p0, Lvpadn/e;->i:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lvpadn/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    .line 75
    iget-object v2, p0, Lvpadn/e;->g:Lc/GeoBroker;

    invoke-virtual {v2, p1, v0}, Lc/GeoBroker;->win(Landroid/location/Location;Lvpadn/p;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lvpadn/e;->g:Lc/GeoBroker;

    invoke-virtual {v0, p0}, Lc/GeoBroker;->isGlobalListener(Lvpadn/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    const-string v1, "Stopping global listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lvpadn/e;->d()V

    .line 82
    :cond_1
    iget-object v0, p0, Lvpadn/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    iget-object v0, p0, Lvpadn/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v2, p0, Lvpadn/e;->g:Lc/GeoBroker;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    invoke-virtual {v2, p1, v0}, Lc/GeoBroker;->win(Landroid/location/Location;Lvpadn/p;)V

    goto :goto_1

    .line 88
    :cond_2
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lvpadn/e;->e:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lvpadn/e;->d:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/e;->e:Z

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lvpadn/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lvpadn/e;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lvpadn/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    .line 57
    iget-object v2, p0, Lvpadn/e;->g:Lc/GeoBroker;

    invoke-virtual {v2, p1, p2, v0}, Lc/GeoBroker;->fail(ILjava/lang/String;Lvpadn/p;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lvpadn/e;->g:Lc/GeoBroker;

    invoke-virtual {v0, p0}, Lc/GeoBroker;->isGlobalListener(Lvpadn/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    const-string v1, "Stopping global listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lvpadn/e;->d()V

    .line 64
    :cond_1
    iget-object v0, p0, Lvpadn/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    iget-object v0, p0, Lvpadn/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v2, p0, Lvpadn/e;->g:Lc/GeoBroker;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/p;

    invoke-virtual {v2, p1, p2, v0}, Lc/GeoBroker;->fail(ILjava/lang/String;Lvpadn/p;)V

    goto :goto_1

    .line 70
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lvpadn/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lvpadn/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-virtual {p0}, Lvpadn/e;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    invoke-direct {p0}, Lvpadn/e;->d()V

    .line 171
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lvpadn/p;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lvpadn/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lvpadn/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lvpadn/e;->c()V

    .line 157
    :cond_0
    return-void
.end method

.method public a(Lvpadn/p;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lvpadn/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p0}, Lvpadn/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lvpadn/e;->c()V

    .line 163
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lvpadn/e;->d()V

    .line 178
    return-void
.end method

.method protected c()V
    .locals 6

    .prologue
    .line 188
    iget-boolean v0, p0, Lvpadn/e;->e:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lvpadn/e;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/e;->e:Z

    .line 191
    iget-object v0, p0, Lvpadn/e;->d:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget v0, Lvpadn/e;->b:I

    const-string v1, "Network provider is not available."

    invoke-virtual {p0, v0, v1}, Lvpadn/e;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    const-string v1, "The location has been updated!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, p1}, Lvpadn/e;->a(Landroid/location/Location;)V

    .line 144
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget v0, Lvpadn/e;->b:I

    const-string v1, "GPS provider disabled."

    invoke-virtual {p0, v0, v1}, Lvpadn/e;->a(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The status of the provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-nez p2, :cond_0

    .line 125
    iget-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is OUT OF SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget v0, Lvpadn/e;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvpadn/e;->a(ILjava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 129
    iget-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lvpadn/e;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
