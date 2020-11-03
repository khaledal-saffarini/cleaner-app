.class Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;
.super Ljava/lang/Object;
.source "JunkCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;


# direct methods
.method constructor <init>(Llightning/thunder/cleaner/Fragments/JunkCleaner$1;)V
    .locals 0

    .line 144
    iput-object p1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 150
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->mainbrush:Landroid/widget/ImageView;

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    sget-object v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->mainbutton:Landroid/widget/ImageView;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cache:Landroid/widget/ImageView;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temp:Landroid/widget/ImageView;

    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residue:Landroid/widget/ImageView;

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->system:Landroid/widget/ImageView;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->maintext:Landroid/widget/TextView;

    const-string v1, "CRYSTAL CLEAR"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->maintext:Landroid/widget/TextView;

    const-string v1, "#24D149"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cachetext:Landroid/widget/TextView;

    const-string v2, "0 MB"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->cachetext:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temptext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->temptext:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residuetext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->residuetext:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->systemtext:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->systemtext:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/JunkCleaner;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->editor:Landroid/content/SharedPreferences$Editor;

    .line 175
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "junk"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    iget-object v0, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    iget-object v0, v0, Llightning/thunder/cleaner/Fragments/JunkCleaner;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Llightning/thunder/cleaner/Alaram_Junk;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 184
    iget-object v1, p0, Llightning/thunder/cleaner/Fragments/JunkCleaner$1$1;->this$1:Llightning/thunder/cleaner/Fragments/JunkCleaner$1;

    iget-object v1, v1, Llightning/thunder/cleaner/Fragments/JunkCleaner$1;->this$0:Llightning/thunder/cleaner/Fragments/JunkCleaner;

    invoke-virtual {v1}, Llightning/thunder/cleaner/Fragments/JunkCleaner;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x927c0

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
