.class public Landroid/view/WindowManager$InsetsParams;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetsParams"
.end annotation


# instance fields
.field private blacklist mInsets:Landroid/graphics/Insets;

.field private final blacklist mType:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/WindowManager$InsetsParams;->mType:I

    return-void
.end method


# virtual methods
.method public whitelist getInsetsSize()Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/WindowManager$InsetsParams;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/view/WindowManager$InsetsParams;->mType:I

    return p0
.end method

.method public whitelist setInsetsSize(Landroid/graphics/Insets;)Landroid/view/WindowManager$InsetsParams;
    .locals 0

    iput-object p1, p0, Landroid/view/WindowManager$InsetsParams;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method
