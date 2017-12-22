.class final Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$2;
.super Ljava/util/ArrayList;
.source "PlayBilling.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$2;->add(Ljava/lang/Object;)Z

    .line 138
    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
