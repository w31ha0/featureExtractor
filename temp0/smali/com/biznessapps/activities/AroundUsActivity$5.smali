.class Lcom/biznessapps/activities/AroundUsActivity$5;
.super Ljava/lang/Object;
.source "AroundUsActivity.java"

# interfaces
.implements Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/AroundUsActivity;->getTapHandler()Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/activities/AroundUsActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/activities/AroundUsActivity;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/biznessapps/activities/AroundUsActivity$5;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public overlayItemTapped(Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;)V
    .locals 2
    .param p1, "oi"    # Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$5;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-virtual {p1}, Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;->getPoiInfo()Lcom/biznessapps/model/AroundUsItem$PoiItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/activities/AroundUsActivity;->access$600(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V

    .line 303
    return-void
.end method
