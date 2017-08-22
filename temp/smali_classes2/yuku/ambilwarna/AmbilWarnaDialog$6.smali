.class Lyuku/ambilwarna/AmbilWarnaDialog$6;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lyuku/ambilwarna/AmbilWarnaDialog;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lyuku/ambilwarna/AmbilWarnaDialog;

    .prologue
    .line 148
    iput-object p1, p0, Lyuku/ambilwarna/AmbilWarnaDialog$6;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    iput-object p2, p0, Lyuku/ambilwarna/AmbilWarnaDialog$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog$6;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-virtual {v0}, Lyuku/ambilwarna/AmbilWarnaDialog;->moveCursor()V

    .line 152
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog$6;->this$0:Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-virtual {v0}, Lyuku/ambilwarna/AmbilWarnaDialog;->moveTarget()V

    .line 153
    iget-object v0, p0, Lyuku/ambilwarna/AmbilWarnaDialog$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 154
    return-void
.end method
