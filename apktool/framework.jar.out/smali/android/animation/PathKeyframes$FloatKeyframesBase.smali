.class abstract Landroid/animation/PathKeyframes$FloatKeyframesBase;
.super Landroid/animation/PathKeyframes$SimpleKeyframes;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes$FloatKeyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FloatKeyframesBase"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>(Landroid/animation/PathKeyframes-IA;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getType()Ljava/lang/Class;
    .locals 0

    const-class p0, Ljava/lang/Float;

    return-object p0
.end method

.method public greylist-max-o getValue(F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/animation/PathKeyframes$FloatKeyframesBase;->getFloatValue(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
