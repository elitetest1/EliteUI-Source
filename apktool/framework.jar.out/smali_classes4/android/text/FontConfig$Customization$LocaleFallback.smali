.class public Landroid/text/FontConfig$Customization$LocaleFallback;
.super Ljava/lang/Object;
.source "FontConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig$Customization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleFallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$Customization$LocaleFallback$Operation;
    }
.end annotation


# static fields
.field public static final blacklist OPERATION_APPEND:I = 0x1

.field public static final blacklist OPERATION_PREPEND:I = 0x0

.field public static final blacklist OPERATION_REPLACE:I = 0x2


# instance fields
.field private final blacklist mFamily:Landroid/text/FontConfig$FontFamily;

.field private final blacklist mLocale:Ljava/util/Locale;

.field private final blacklist mOperation:I

.field private final blacklist mScript:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Locale;ILandroid/text/FontConfig$FontFamily;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mLocale:Ljava/util/Locale;

    iput p2, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mOperation:I

    iput-object p3, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mFamily:Landroid/text/FontConfig$FontFamily;

    invoke-static {p1}, Landroid/text/FontConfig;->resolveScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mScript:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getFamily()Landroid/text/FontConfig$FontFamily;
    .locals 0

    iget-object p0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mFamily:Landroid/text/FontConfig$FontFamily;

    return-object p0
.end method

.method public blacklist getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public blacklist getOperation()I
    .locals 0

    iget p0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mOperation:I

    return p0
.end method

.method public blacklist getScript()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mScript:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocaleFallback{mLocale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mOperation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/text/FontConfig$Customization$LocaleFallback;->mFamily:Landroid/text/FontConfig$FontFamily;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
