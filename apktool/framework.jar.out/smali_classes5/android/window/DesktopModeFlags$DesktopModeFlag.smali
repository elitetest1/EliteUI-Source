.class public Landroid/window/DesktopModeFlags$DesktopModeFlag;
.super Ljava/lang/Object;
.source "DesktopModeFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/DesktopModeFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesktopModeFlag"
.end annotation


# instance fields
.field private final blacklist mFlagFunction:Ljava/util/function/BooleanSupplier;

.field private final blacklist mShouldOverrideByDevOption:Z


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BooleanSupplier;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/DesktopModeFlags$DesktopModeFlag;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    iput-boolean p2, p0, Landroid/window/DesktopModeFlags$DesktopModeFlag;->mShouldOverrideByDevOption:Z

    return-void
.end method


# virtual methods
.method public blacklist isTrue()Z
    .locals 1

    iget-object v0, p0, Landroid/window/DesktopModeFlags$DesktopModeFlag;->mFlagFunction:Ljava/util/function/BooleanSupplier;

    iget-boolean p0, p0, Landroid/window/DesktopModeFlags$DesktopModeFlag;->mShouldOverrideByDevOption:Z

    invoke-static {v0, p0}, Landroid/window/DesktopModeFlags;->-$$Nest$smisFlagTrue(Ljava/util/function/BooleanSupplier;Z)Z

    move-result p0

    return p0
.end method
