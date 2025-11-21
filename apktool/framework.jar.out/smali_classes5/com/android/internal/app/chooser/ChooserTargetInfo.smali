.class public interface abstract Lcom/android/internal/app/chooser/ChooserTargetInfo;
.super Ljava/lang/Object;
.source "ChooserTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;


# virtual methods
.method public abstract blacklist getChooserTarget()Landroid/service/chooser/ChooserTarget;
.end method

.method public abstract blacklist getModifiedScore()F
.end method

.method public blacklist isSimilar(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method
