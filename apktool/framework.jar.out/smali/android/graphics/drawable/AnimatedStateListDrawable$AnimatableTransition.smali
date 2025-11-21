.class Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;
.super Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatableTransition"
.end annotation


# instance fields
.field private final greylist-max-o mA:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/Animatable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>(Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    return-void
.end method


# virtual methods
.method public greylist-max-o start()V
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method public greylist-max-o stop()V
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/AnimatedStateListDrawable$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method
