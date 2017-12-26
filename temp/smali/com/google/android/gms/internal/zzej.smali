.class public final Lcom/google/android/gms/internal/zzej;
.super Lcom/google/android/gms/internal/zzeg$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field private final zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeg$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    return-void
.end method

.method private zza(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not get Server Parameters Bundle."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    move-object v0, v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz v1, :cond_2

    const-string v1, "adJson"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tagForChildDirectedTreatment"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public getView()Lcom/google/android/gms/dynamic/zzd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not get banner view from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    const-string v0, "Check if adapter is initialized."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->isInitialized()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Could not check if adapter is initialized."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public resume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public showInterstitial()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    const-string v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public showVideo()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_0
    const-string v0, "Show rewarded video ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->showVideo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not show rewarded video ad from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v1, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Requesting rewarded video ad from adapter."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    move-object v8, v0

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    if-eqz v1, :cond_1

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzei;

    iget-wide v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_2

    move-object v2, v9

    :goto_1
    iget v3, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrY:I

    iget-object v5, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsf:Landroid/location/Location;

    iget-boolean v6, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsa:Z

    iget v7, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzei;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsh:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsh:Landroid/os/Bundle;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :goto_2
    iget v3, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Lcom/google/android/gms/internal/zzej;->zza(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v8, v1, v3, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_1
    move-object v4, v9

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/Date;

    iget-wide v5, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Could not load rewarded video ad from adapter."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_3
    move-object v2, v9

    goto :goto_2
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/reward/mediation/client/zza;Ljava/lang/String;)V
    .locals 10

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v1, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediationAdapter is not a MediationRewardedVideoAdAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Initialize rewarded video adapter."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    move-object v9, v0

    iget-object v1, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    if-eqz v1, :cond_2

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzei;

    iget-wide v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_3

    move-object v2, v8

    :goto_1
    iget v3, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrY:I

    iget-object v5, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsf:Landroid/location/Location;

    iget-boolean v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsa:Z

    iget v7, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzei;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsh:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsh:Landroid/os/Bundle;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzn(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/ads/internal/reward/mediation/client/zzb;

    invoke-direct {v6, p4}, Lcom/google/android/gms/ads/internal/reward/mediation/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/reward/mediation/client/zza;)V

    iget v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    const/4 v4, 0x0

    invoke-direct {p0, p5, v2, v4}, Lcom/google/android/gms/internal/zzej;->zza(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object v2, v9

    move-object v4, v1

    move-object v5, p3

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_2
    move-object v4, v8

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/Date;

    iget-wide v5, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Could not initialize rewarded video adapter."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzej;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Requesting interstitial ad from adapter."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    move-object v8, v0

    iget-object v1, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    if-eqz v1, :cond_1

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzei;

    iget-wide v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_2

    move-object v2, v9

    :goto_1
    iget v3, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrY:I

    iget-object v5, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsf:Landroid/location/Location;

    iget-boolean v6, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsa:Z

    iget v7, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzei;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsh:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsh:Landroid/os/Bundle;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzn(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/zzek;

    invoke-direct {v4, p5}, Lcom/google/android/gms/internal/zzek;-><init>(Lcom/google/android/gms/internal/zzeh;)V

    iget v2, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    invoke-direct {p0, p3, v2, p4}, Lcom/google/android/gms/internal/zzej;->zza(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v2, v8

    move-object v6, v1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    return-void

    :cond_1
    move-object v4, v9

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/Date;

    iget-wide v5, p2, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Could not request interstitial ad from adapter."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_3
    move-object v7, v9

    goto :goto_2
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzej;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzeh;)V
    .locals 10

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v1, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "Requesting banner ad from adapter."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzej;->zzyf:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    move-object v9, v0

    iget-object v1, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    if-eqz v1, :cond_2

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzei;

    iget-wide v2, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-nez v2, :cond_3

    move-object v2, v8

    :goto_1
    iget v3, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrY:I

    iget-object v5, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsf:Landroid/location/Location;

    iget-boolean v6, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsa:Z

    iget v7, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzei;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V

    iget-object v2, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsh:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsh:Landroid/os/Bundle;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzn(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/zzek;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzek;-><init>(Lcom/google/android/gms/internal/zzeh;)V

    iget v2, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    invoke-direct {p0, p4, v2, p5}, Lcom/google/android/gms/internal/zzej;->zza(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iget v2, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    iget v6, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    iget-object v7, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzsm:Ljava/lang/String;

    invoke-static {v2, v6, v7}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v6

    move-object v2, v9

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V

    return-void

    :cond_2
    move-object v4, v8

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/Date;

    iget-wide v5, p3, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Could not request banner ad from adapter."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method
