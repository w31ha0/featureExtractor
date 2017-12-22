.class Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$1;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$1;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 786
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    .line 786
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 788
    return-object p2
.end method
