.class public abstract Lcom/google/android/gms/internal/zzaae;
.super Lcom/google/android/gms/internal/zzabe;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected mStarted:Z

.field private zzaAa:Lcom/google/android/gms/common/ConnectionResult;

.field private zzaAb:I

.field private final zzaAc:Landroid/os/Handler;

.field protected zzazZ:Z

.field protected final zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzabf;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzaae;-><init>(Lcom/google/android/gms/internal/zzabf;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzabf;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzabe;-><init>(Lcom/google/android/gms/internal/zzabf;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAc:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaae;->zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaae;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x12

    const/16 v2, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaae;->zzvD()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaae;->zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaae;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    if-ne v1, v4, :cond_1

    if-ne v2, v4, :cond_1

    goto :goto_1

    :pswitch_1
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    const-string/jumbo v0, "<<ResolutionFailureErrorDetail>>"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_3
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    iget v1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaae;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget v1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzaae;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaae;->zzvD()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzabe;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "resolving_error"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "failed_client_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string/jumbo v0, "failed_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "failed_resolution"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzabe;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "resolving_error"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "failed_client_id"

    iget v1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "failed_status"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "failed_resolution"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzabe;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzabe;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->mStarted:Z

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method public zzb(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    iput p2, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAc:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzaae$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzaae$zza;-><init>(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaae$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected zzvD()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAb:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazZ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaAa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaae;->zzvx()V

    return-void
.end method

.method protected abstract zzvx()V
.end method
