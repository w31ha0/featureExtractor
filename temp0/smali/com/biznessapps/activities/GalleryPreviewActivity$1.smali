.class Lcom/biznessapps/activities/GalleryPreviewActivity$1;
.super Ljava/lang/Object;
.source "GalleryPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/GalleryPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/activities/GalleryPreviewActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/activities/GalleryPreviewActivity$1;->this$0:Lcom/biznessapps/activities/GalleryPreviewActivity;

    invoke-static {v0}, Lcom/biznessapps/activities/GalleryPreviewActivity;->access$100(Lcom/biznessapps/activities/GalleryPreviewActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 65
    const/4 v0, 0x1

    return v0
.end method
