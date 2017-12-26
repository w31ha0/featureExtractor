.class Lcom/google/android/gms/internal/zzeo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic zzyt:Lcom/google/android/gms/internal/zzeo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeo$1;->zzyt:Lcom/google/android/gms/internal/zzeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeo$1;->zzyt:Lcom/google/android/gms/internal/zzeo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeo;->createIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeo$1;->zzyt:Lcom/google/android/gms/internal/zzeo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeo;->zza(Lcom/google/android/gms/internal/zzeo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
