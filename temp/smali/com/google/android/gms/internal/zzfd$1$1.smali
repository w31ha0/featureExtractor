.class Lcom/google/android/gms/internal/zzfd$1$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic zzAx:Lcom/google/android/gms/internal/zzfd$1;

.field final synthetic zzrG:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfd$1;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfd$1$1;->zzAx:Lcom/google/android/gms/internal/zzfd$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfd$1$1;->zzrG:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Loading assets have finished"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$1$1;->zzAx:Lcom/google/android/gms/internal/zzfd$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfd$1;->zzAw:Lcom/google/android/gms/internal/zzfd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfd;->zzAt:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd$1$1;->zzrG:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Loading assets have failed."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfd$1$1;->zzAx:Lcom/google/android/gms/internal/zzfd$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfd$1;->zzAw:Lcom/google/android/gms/internal/zzfd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfd;->zzAt:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfd$1$1;->zzrG:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
