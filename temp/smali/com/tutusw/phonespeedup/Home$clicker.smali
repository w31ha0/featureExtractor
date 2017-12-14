.class Lcom/tutusw/phonespeedup/Home$clicker;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "clicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/Home;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/Home;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/Home;Lcom/tutusw/phonespeedup/Home$clicker;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/Home$clicker;-><init>(Lcom/tutusw/phonespeedup/Home;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v4, "startBoot"

    const-string v6, "autorefresh"

    .line 384
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->refresh:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/Home;->access$0(Lcom/tutusw/phonespeedup/Home;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->info:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 388
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    const-class v2, Lcom/tutusw/phonespeedup/InfoActivity;

    invoke-static {v1, v2}, Lcom/tutusw/phonespeedup/Home;->access$1(Lcom/tutusw/phonespeedup/Home;Ljava/lang/Class;)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->advanced:Landroid/widget/Button;

    if-ne p1, v1, :cond_5

    .line 392
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/Home;->access$2(Lcom/tutusw/phonespeedup/Home;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "gov":Ljava/lang/String;
    const-string v1, "ondemand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "conservative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 395
    :cond_3
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    const-class v2, Lcom/tutusw/phonespeedup/AdvancedActivity;

    invoke-static {v1, v2}, Lcom/tutusw/phonespeedup/Home;->access$1(Lcom/tutusw/phonespeedup/Home;Ljava/lang/Class;)V

    goto :goto_0

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    const-string v2, "\u9ad8\u7ea7\u83dc\u5355\u5fc5\u987b\u5728\u3010ondemand/conservative\u3011\u9009\u9879\u4e0a\u4f7f\u7528\u3002"

    invoke-static {v1, v2}, Lcom/tutusw/phonespeedup/Home;->access$3(Lcom/tutusw/phonespeedup/Home;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    .end local v0    # "gov":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->boot:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_8

    .line 403
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    const-string v2, "startBoot"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7

    .line 405
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "startBoot"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 411
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 407
    :cond_7
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    const-string v2, "startBoot"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 409
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "startBoot"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 417
    :cond_8
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->about:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    .line 418
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    const-class v2, Lcom/tutusw/phonespeedup/AboutActivity;

    invoke-static {v1, v2}, Lcom/tutusw/phonespeedup/Home;->access$1(Lcom/tutusw/phonespeedup/Home;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 420
    :cond_9
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->autorefresh:Landroid/widget/CheckBox;

    if-ne p1, v1, :cond_c

    .line 421
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    const-string v2, "autorefresh"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_b

    .line 422
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autorefresh"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 423
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/Home;->access$0(Lcom/tutusw/phonespeedup/Home;)V

    .line 430
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 425
    :cond_b
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->settings:Landroid/content/SharedPreferences;

    const-string v2, "autorefresh"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_a

    .line 426
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/Home;->refreshCounter:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autorefresh"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 428
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/Home;->access$0(Lcom/tutusw/phonespeedup/Home;)V

    goto :goto_2

    .line 432
    :cond_c
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->donate:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    const-string v2, "\u8c22\u8c22\uff01"

    invoke-static {v1, v2, v5}, Lcom/tutusw/phonespeedup/Home;->access$4(Lcom/tutusw/phonespeedup/Home;Ljava/lang/String;I)V

    .line 434
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$clicker;->this$0:Lcom/tutusw/phonespeedup/Home;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://search?q=pname:com.mhuang.overclocking"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/tutusw/phonespeedup/Home;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
