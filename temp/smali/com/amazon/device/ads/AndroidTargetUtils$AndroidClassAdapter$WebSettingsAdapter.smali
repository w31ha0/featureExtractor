.class public Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

.field private final webSettings:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;Landroid/webkit/WebSettings;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;->this$0:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;->webSettings:Landroid/webkit/WebSettings;

    .line 71
    return-void
.end method


# virtual methods
.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;->this$0:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;->access$000(Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter$WebSettingsAdapter;->webSettings:Landroid/webkit/WebSettings;

    invoke-static {v0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanMR1TargetUtils;->setMediaPlaybackRequiresUserGesture(Landroid/webkit/WebSettings;Z)V

    .line 83
    :cond_0
    return-void
.end method
