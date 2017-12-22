.class final Lcom/google/android/gms/internal/zzabh$zza;
.super Landroid/os/Handler;


# instance fields
.field final synthetic zzaCZ:Lcom/google/android/gms/internal/zzabh;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabh$zza;->zzaCZ:Lcom/google/android/gms/internal/zzabh;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzabh$zzc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzabh;->zzb(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
