.class public interface abstract Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayBrightnessListener"
.end annotation


# virtual methods
.method public blacklist onChanged(F)V
    .locals 0

    return-void
.end method

.method public blacklist onChanged(IF)V
    .locals 0

    if-nez p1, :cond_0

    invoke-interface {p0, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;->onChanged(F)V

    :cond_0
    return-void
.end method
