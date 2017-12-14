.class Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;
.super Landroid/widget/CursorAdapter;
.source "ProfilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/ProfilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;


# direct methods
.method public constructor <init>(Lcom/tutusw/phonespeedup/ProfilesActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    .line 78
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 79
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;)Lcom/tutusw/phonespeedup/ProfilesActivity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->this$0:Lcom/tutusw/phonespeedup/ProfilesActivity;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 85
    const v3, 0x7f080085

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 86
    .local v20, "row":Landroid/widget/RelativeLayout;
    const v3, 0x7f080088

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 87
    .local v14, "priorityView":Landroid/widget/TextView;
    const v3, 0x7f080087

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 88
    .local v19, "profileView":Landroid/widget/TextView;
    const v3, 0x7f08008a

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 89
    .local v17, "profileMaxView":Landroid/widget/TextView;
    const v3, 0x7f08008b

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 90
    .local v18, "profileMinView":Landroid/widget/TextView;
    const v3, 0x7f080089

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 91
    .local v16, "profileGovernorView":Landroid/widget/TextView;
    const v3, 0x7f080086

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    .line 93
    .local v15, "profileEnableView":Landroid/widget/CheckBox;
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 94
    .local v5, "id":I
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 95
    .local v7, "priority":I
    const/4 v3, 0x2

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 96
    .local v6, "enabled":I
    const/4 v3, 0x3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 97
    .local v8, "profile_id":I
    const/4 v3, 0x4

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 98
    .local v9, "max":I
    const/4 v3, 0x5

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 99
    .local v10, "min":I
    const/4 v3, 0x6

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "governor":Ljava/lang/String;
    const/4 v3, 0x7

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 101
    .local v12, "param1":I
    const/16 v3, 0x8

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 103
    .local v13, "param2":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4f18\u5148\u7ea7\u522b: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit16 v4, v9, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \u6700\u5927\u503c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit16 v4, v10, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \u6700\u5c0f\u503c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    if-eqz v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v15, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    new-instance v3, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$1;-><init>(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;IIIIIILjava/lang/String;II)V

    invoke-virtual {v15, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    packed-switch v8, :pswitch_data_0

    .line 141
    invoke-static {v8}, Lcom/tutusw/phonespeedup/Profiles;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v6    # "enabled":I
    :goto_1
    new-instance v3, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$2;

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$2;-><init>(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;I)V

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    new-instance v3, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$3;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter$3;-><init>(Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;)V

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    return-void

    .line 108
    .restart local v6    # "enabled":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 138
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/tutusw/phonespeedup/Profiles;->getProfileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 139
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/tutusw/phonespeedup/Profiles;->getProfileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v4, v12

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .end local v6    # "enabled":I
    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0 C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 140
    .restart local v6    # "enabled":I
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/tutusw/phonespeedup/Profiles;->getProfileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v4, v12

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .end local v6    # "enabled":I
    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0 C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesActivity$DatabaseAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
