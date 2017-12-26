.class Lcom/google/android/gms/internal/zzjs$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# instance fields
.field final synthetic zzTC:Lcom/google/android/gms/internal/zzjs$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjs$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs$1$1;->zzTC:Lcom/google/android/gms/internal/zzjs$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs$1$1;->zzTC:Lcom/google/android/gms/internal/zzjs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjs$1;->zzTB:Lcom/google/android/gms/internal/zzjs;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzjs;->zzbB(Ljava/lang/String;)V

    return-void
.end method
