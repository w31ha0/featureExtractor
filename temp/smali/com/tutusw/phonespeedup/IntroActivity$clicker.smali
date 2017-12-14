.class Lcom/tutusw/phonespeedup/IntroActivity$clicker;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "clicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/IntroActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/IntroActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/IntroActivity;Lcom/tutusw/phonespeedup/IntroActivity$clicker;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/IntroActivity$clicker;-><init>(Lcom/tutusw/phonespeedup/IntroActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x40

    .line 122
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->cupcake:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 124
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "htc_msm"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->galaxy:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 128
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "samsung_msm"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->dext:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 132
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "dext_msm"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 136
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "generic_qsd"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->tattoo:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 140
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "htc_msm_turbo"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto :goto_0

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->custom:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 145
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "custom"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto :goto_0

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->sholes:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 148
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 149
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "sholes_omap3"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto/16 :goto_0

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->moment:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 152
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 153
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "samsung_arm"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto/16 :goto_0

    .line 155
    :cond_8
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->pulse:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 157
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "huawei_msm_turbo"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto/16 :goto_0

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->liquid:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 160
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 161
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "acer_qsd"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto/16 :goto_0

    .line 164
    :cond_a
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x27:Landroid/widget/Button;

    if-ne p1, v0, :cond_b

    .line 165
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 166
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "msm_7x27"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto/16 :goto_0

    .line 169
    :cond_b
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x30:Landroid/widget/Button;

    if-ne p1, v0, :cond_c

    .line 170
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 171
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "msm_7x30"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto/16 :goto_0

    .line 173
    :cond_c
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd8x55:Landroid/widget/Button;

    if-ne p1, v0, :cond_d

    .line 174
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 175
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "qsd_8x55"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto/16 :goto_0

    .line 177
    :cond_d
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->auto:Landroid/widget/Button;

    if-ne p1, v0, :cond_e

    .line 178
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$0(Lcom/tutusw/phonespeedup/IntroActivity;I)V

    .line 179
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "\u81ea\u52a8\u68c0\u6d4b"

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/IntroActivity;->access$1(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$2(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto/16 :goto_0

    .line 182
    :cond_e
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->donate:Landroid/widget/Button;

    if-ne p1, v0, :cond_f

    .line 183
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    const-string v1, "\u8c22\u8c22\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tutusw/phonespeedup/IntroActivity;->access$3(Lcom/tutusw/phonespeedup/IntroActivity;Ljava/lang/String;I)V

    .line 184
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/IntroActivity;->access$4(Lcom/tutusw/phonespeedup/IntroActivity;)V

    goto/16 :goto_0

    .line 186
    :cond_f
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->show:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->cupcake:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->galaxy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->dext:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->tattoo:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->custom:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->sholes:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->moment:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->pulse:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->liquid:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x27:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->msm7x30:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->qsd8x55:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/tutusw/phonespeedup/IntroActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/IntroActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/IntroActivity;->show:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method
