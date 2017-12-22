.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$3;
.super Ljava/lang/Object;
.source "KongBackgroundScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$3;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$3;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_0
    return-void
.end method
