.class Lcom/netflix/android/widgetry/buffet/BuffetBar$5$1;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/android/widgetry/buffet/BuffetBar$5;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar$5;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$5$1;->this$1:Lcom/netflix/android/widgetry/buffet/BuffetBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$5$1;->this$1:Lcom/netflix/android/widgetry/buffet/BuffetBar$5;

    iget-object v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetBar$5;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewHidden(I)V

    .line 568
    return-void
.end method
