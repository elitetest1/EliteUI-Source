.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "PorterDuffXfermode.java"


# static fields
.field static final blacklist DEFAULT:I


# instance fields
.field blacklist porterDuffMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v0, v0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    sput v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    sget v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    sget v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    iget p1, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iput p1, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    return-void
.end method
