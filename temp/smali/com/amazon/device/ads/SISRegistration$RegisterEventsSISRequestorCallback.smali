.class public Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/SISRequestorCallback;


# instance fields
.field private final sisRegistration:Lcom/amazon/device/ads/SISRegistration;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/SISRegistration;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    .line 255
    return-void
.end method


# virtual methods
.method public onSISCallComplete()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRegistration;->registerEvents()V

    .line 261
    return-void
.end method
