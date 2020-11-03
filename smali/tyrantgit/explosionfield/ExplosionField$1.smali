.class Ltyrantgit/explosionfield/ExplosionField$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExplosionField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltyrantgit/explosionfield/ExplosionField;->explode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltyrantgit/explosionfield/ExplosionField;


# direct methods
.method constructor <init>(Ltyrantgit/explosionfield/ExplosionField;)V
    .locals 0

    .line 76
    iput-object p1, p0, Ltyrantgit/explosionfield/ExplosionField$1;->this$0:Ltyrantgit/explosionfield/ExplosionField;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 79
    iget-object v0, p0, Ltyrantgit/explosionfield/ExplosionField$1;->this$0:Ltyrantgit/explosionfield/ExplosionField;

    invoke-static {v0}, Ltyrantgit/explosionfield/ExplosionField;->access$000(Ltyrantgit/explosionfield/ExplosionField;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
