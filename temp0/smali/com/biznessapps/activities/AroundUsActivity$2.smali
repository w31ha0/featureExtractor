.class Lcom/biznessapps/activities/AroundUsActivity$2;
.super Ljava/lang/Object;
.source "AroundUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/AroundUsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 121
    iput-object p1, p0, Lcom/biznessapps/activities/AroundUsActivity$2;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity$2;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$2;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v0}, Lcom/biznessapps/activities/AroundUsActivity;->access$100(Lcom/biznessapps/activities/AroundUsActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity$2;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v2}, Lcom/biznessapps/activities/AroundUsActivity;->access$000(Lcom/biznessapps/activities/AroundUsActivity;)Lcom/biznessapps/model/AroundUsItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/AroundUsItem;->getRedColor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/biznessapps/activities/AroundUsActivity;->access$200(Lcom/biznessapps/activities/AroundUsActivity;Ljava/util/List;)V

    .line 125
    return-void
.end method
