.class public interface abstract Landroid/content/res/FontScaleConverter;
.super Ljava/lang/Object;
.source "FontScaleConverter.java"


# direct methods
.method public static whitelist forScale(F)Landroid/content/res/FontScaleConverter;
    .locals 0

    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->forScale(F)Landroid/content/res/FontScaleConverter;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist isNonLinearFontScalingActive(F)Z
    .locals 0

    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->isNonLinearFontScalingActive(F)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract whitelist convertDpToSp(F)F
.end method

.method public abstract whitelist convertSpToDp(F)F
.end method
