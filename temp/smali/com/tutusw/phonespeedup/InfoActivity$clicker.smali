.class Lcom/tutusw/phonespeedup/InfoActivity$clicker;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/InfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "clicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/InfoActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/InfoActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/InfoActivity;Lcom/tutusw/phonespeedup/InfoActivity$clicker;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/InfoActivity$clicker;-><init>(Lcom/tutusw/phonespeedup/InfoActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/InfoActivity;->benchmark:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    iput-boolean v1, v0, Lcom/tutusw/phonespeedup/InfoActivity;->autorefresh:Z

    .line 97
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    invoke-static {v0, v2}, Lcom/tutusw/phonespeedup/InfoActivity;->access$0(Lcom/tutusw/phonespeedup/InfoActivity;I)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/InfoActivity;->longbenchmark:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    iput-boolean v1, v0, Lcom/tutusw/phonespeedup/InfoActivity;->autorefresh:Z

    .line 104
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    const/high16 v1, 0x400000

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/InfoActivity;->access$1(Lcom/tutusw/phonespeedup/InfoActivity;I)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/InfoActivity;->stresstest:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    invoke-virtual {v0, v2}, Lcom/tutusw/phonespeedup/InfoActivity;->setRequestedOrientation(I)V

    .line 108
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    const-string v1, "\u6b63\u5728\u5f00\u59cb\u5f3a\u529b\u538b\u529b\u6d4b\u8bd5\uff0c\u8bf7\u7a0d\u7b49\u2026"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/InfoActivity;->access$2(Lcom/tutusw/phonespeedup/InfoActivity;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    const-class v1, Lcom/tutusw/phonespeedup/StresstestActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/InfoActivity;->access$3(Lcom/tutusw/phonespeedup/InfoActivity;Ljava/lang/Class;)V

    goto :goto_0
.end method
