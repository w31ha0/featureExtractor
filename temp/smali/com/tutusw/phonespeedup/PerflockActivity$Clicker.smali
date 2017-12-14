.class Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;
.super Ljava/lang/Object;
.source "PerflockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/PerflockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Clicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/PerflockActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/PerflockActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/PerflockActivity;Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;-><init>(Lcom/tutusw/phonespeedup/PerflockActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/PerflockActivity;->buttonClose:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/PerflockActivity;->finish()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/PerflockActivity;->buttonDisable:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/PerflockActivity;->access$0(Lcom/tutusw/phonespeedup/PerflockActivity;)V

    goto :goto_0
.end method
