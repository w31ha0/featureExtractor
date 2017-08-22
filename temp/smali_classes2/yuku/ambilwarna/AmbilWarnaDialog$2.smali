.class Lyuku/ambilwarna/AmbilWarnaDialog$2;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyuku/ambilwarna/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyuku/ambilwarna/AmbilWarnaDialog;


# direct methods
.method constructor <init>(Lyuku/ambilwarna/AmbilWarnaDialog;)V
    .locals 0
    .param p1, "this$0"    # Lyuku/ambilwarna/AmbilWarnaDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 95
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 97
    .local v1, "y":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_1

    const/4 v0, 0x0

    .line 98
    :cond_1
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v3

    int-to-float v0, v3

    .line 99
    :cond_2
    cmpg-float v3, v1, v6

    if-gez v3, :cond_3

    const/4 v1, 0x0

    .line 100
    :cond_3
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v3

    int-to-float v1, v3

    .line 102
    :cond_4
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v4, v4, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    mul-float/2addr v4, v0

    invoke-static {v3, v4}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$300(Lyuku/ambilwarna/AmbilWarnaDialog;F)V

    .line 103
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v4, v4, Lyuku/ambilwarna/AmbilWarnaDialog;->viewSatVal:Lyuku/ambilwarna/AmbilWarnaKotak;

    invoke-virtual {v4}, Lyuku/ambilwarna/AmbilWarnaKotak;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    mul-float/2addr v4, v1

    sub-float v4, v5, v4

    invoke-static {v3, v4}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$400(Lyuku/ambilwarna/AmbilWarnaDialog;F)V

    .line 106
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-virtual {v3}, Lyuku/ambilwarna/AmbilWarnaDialog;->moveTarget()V

    .line 107
    iget-object v3, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iget-object v3, v3, Lyuku/ambilwarna/AmbilWarnaDialog;->viewNewColor:Landroid/view/View;

    iget-object v4, p0, Lyuku/ambilwarna/AmbilWarnaDialog$2;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-static {v4}, Lyuku/ambilwarna/AmbilWarnaDialog;->access$200(Lyuku/ambilwarna/AmbilWarnaDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method
