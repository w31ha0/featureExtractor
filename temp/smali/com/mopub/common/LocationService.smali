.class public Lcom/mopub/common/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/LocationService$ValidLocationProvider;,
        Lcom/mopub/common/LocationService$LocationAwareness;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/mopub/common/LocationService;


# instance fields
.field mLastKnownLocation:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field mLocationLastUpdatedMillis:J
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static clearLastKnownLocation()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Lcom/mopub/common/LocationService;->getInstance()Lcom/mopub/common/LocationService;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mopub/common/LocationService;->mLastKnownLocation:Landroid/location/Location;

    .line 223
    return-void
.end method

.method static getInstance()Lcom/mopub/common/LocationService;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/mopub/common/LocationService;->sInstance:Lcom/mopub/common/LocationService;

    .line 62
    .local v0, "locationService":Lcom/mopub/common/LocationService;
    if-nez v0, :cond_1

    .line 63
    const-class v3, Lcom/mopub/common/LocationService;

    monitor-enter v3

    .line 64
    :try_start_0
    sget-object v0, Lcom/mopub/common/LocationService;->sInstance:Lcom/mopub/common/LocationService;

    .line 65
    if-nez v0, :cond_0

    .line 66
    new-instance v1, Lcom/mopub/common/LocationService;

    invoke-direct {v1}, Lcom/mopub/common/LocationService;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v0    # "locationService":Lcom/mopub/common/LocationService;
    .local v1, "locationService":Lcom/mopub/common/LocationService;
    :try_start_1
    sput-object v1, Lcom/mopub/common/LocationService;->sInstance:Lcom/mopub/common/LocationService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 69
    .end local v1    # "locationService":Lcom/mopub/common/LocationService;
    .restart local v0    # "locationService":Lcom/mopub/common/LocationService;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 71
    :cond_1
    return-object v0

    .line 69
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "locationService":Lcom/mopub/common/LocationService;
    .restart local v1    # "locationService":Lcom/mopub/common/LocationService;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "locationService":Lcom/mopub/common/LocationService;
    .restart local v0    # "locationService":Lcom/mopub/common/LocationService;
    goto :goto_0
.end method

.method public static getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "locationPrecision"    # I
    .param p2, "locationAwareness"    # Lcom/mopub/common/MoPub$LocationAwareness;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    sget-object v4, Lcom/mopub/common/MoPub$LocationAwareness;->DISABLED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne p2, v4, :cond_0

    .line 122
    const/4 v3, 0x0

    .line 142
    :goto_0
    return-object v3

    .line 125
    :cond_0
    invoke-static {}, Lcom/mopub/common/LocationService;->getInstance()Lcom/mopub/common/LocationService;

    move-result-object v1

    .line 127
    .local v1, "locationService":Lcom/mopub/common/LocationService;
    invoke-static {}, Lcom/mopub/common/LocationService;->isLocationFreshEnough()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    iget-object v3, v1, Lcom/mopub/common/LocationService;->mLastKnownLocation:Landroid/location/Location;

    goto :goto_0

    .line 131
    :cond_1
    sget-object v4, Lcom/mopub/common/LocationService$ValidLocationProvider;->GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {p0, v4}, Lcom/mopub/common/LocationService;->getLocationFromProvider(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;

    move-result-object v0

    .line 132
    .local v0, "gpsLocation":Landroid/location/Location;
    sget-object v4, Lcom/mopub/common/LocationService$ValidLocationProvider;->NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {p0, v4}, Lcom/mopub/common/LocationService;->getLocationFromProvider(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;

    move-result-object v2

    .line 133
    .local v2, "networkLocation":Landroid/location/Location;
    invoke-static {v0, v2}, Lcom/mopub/common/LocationService;->getMostRecentValidLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v3

    .line 136
    .local v3, "result":Landroid/location/Location;
    sget-object v4, Lcom/mopub/common/MoPub$LocationAwareness;->TRUNCATED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne p2, v4, :cond_2

    .line 137
    invoke-static {v3, p1}, Lcom/mopub/common/LocationService;->truncateLocationLatLon(Landroid/location/Location;I)V

    .line 140
    :cond_2
    iput-object v3, v1, Lcom/mopub/common/LocationService;->mLastKnownLocation:Landroid/location/Location;

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/mopub/common/LocationService;->mLocationLastUpdatedMillis:J

    goto :goto_0
.end method

.method static getLocationFromProvider(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "provider"    # Lcom/mopub/common/LocationService$ValidLocationProvider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    invoke-static {p1, p0}, Lcom/mopub/common/LocationService$ValidLocationProvider;->access$000(Lcom/mopub/common/LocationService$ValidLocationProvider;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    :goto_0
    return-object v2

    .line 156
    :cond_0
    const-string v3, "location"

    .line 157
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 160
    .local v1, "locationManager":Landroid/location/LocationManager;
    :try_start_0
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve location from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 163
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " provider: access appears to be disabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve location: device has no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " location provider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve location: device has no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " location provider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getMostRecentValidLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4
    .param p0, "a"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "b"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    if-nez p0, :cond_1

    move-object p0, p1

    .line 187
    .end local p0    # "a":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object p0

    .line 182
    .restart local p0    # "a":Landroid/location/Location;
    :cond_1
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move-object p0, p1

    goto :goto_0
.end method

.method private static isLocationFreshEnough()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-static {}, Lcom/mopub/common/LocationService;->getInstance()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 212
    .local v0, "locationService":Lcom/mopub/common/LocationService;
    iget-object v2, v0, Lcom/mopub/common/LocationService;->mLastKnownLocation:Landroid/location/Location;

    if-nez v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/mopub/common/LocationService;->mLocationLastUpdatedMillis:J

    sub-long/2addr v2, v4

    .line 216
    invoke-static {}, Lcom/mopub/common/MoPub;->getMinimumLocationRefreshTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static truncateLocationLatLon(Landroid/location/Location;I)V
    .locals 10
    .param p0, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "precision"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x5

    .line 193
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 198
    .local v0, "lat":D
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    .line 199
    invoke-virtual {v8, p1, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v8

    .line 200
    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    .line 201
    .local v4, "truncatedLat":D
    invoke-virtual {p0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 203
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 204
    .local v2, "lon":D
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    .line 205
    invoke-virtual {v8, p1, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v8

    .line 206
    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    .line 207
    .local v6, "truncatedLon":D
    invoke-virtual {p0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_0
.end method
