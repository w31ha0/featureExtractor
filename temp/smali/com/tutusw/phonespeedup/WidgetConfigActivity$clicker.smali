.class Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;
.super Ljava/lang/Object;
.source "WidgetConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/WidgetConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "clicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/WidgetConfigActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/WidgetConfigActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/WidgetConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/WidgetConfigActivity;Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;-><init>(Lcom/tutusw/phonespeedup/WidgetConfigActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/WidgetConfigActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->apply:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetConfigActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/WidgetConfigActivity;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/WidgetConfigActivity;->apply()V

    .line 109
    :cond_0
    return-void
.end method
