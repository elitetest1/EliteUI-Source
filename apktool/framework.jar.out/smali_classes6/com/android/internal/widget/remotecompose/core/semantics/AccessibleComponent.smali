.class public interface abstract Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
.super Ljava/lang/Object;
.source "AccessibleComponent.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;,
        Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    }
.end annotation


# virtual methods
.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .locals 0

    sget-object p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object p0
.end method

.method public blacklist getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTextId()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist isClickable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
