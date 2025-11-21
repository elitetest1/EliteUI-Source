.class public Landroid/window/WindowInfosListenerForTest$DisplayInfo;
.super Ljava/lang/Object;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowInfosListenerForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayInfo"
.end annotation


# instance fields
.field public final blacklist displayId:I

.field public final blacklist transform:Landroid/graphics/Matrix;


# direct methods
.method constructor blacklist <init>(ILandroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/WindowInfosListenerForTest$DisplayInfo;->displayId:I

    iput-object p2, p0, Landroid/window/WindowInfosListenerForTest$DisplayInfo;->transform:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/window/WindowInfosListenerForTest$DisplayInfo;->displayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroid/window/WindowInfosListenerForTest$DisplayInfo;->transform:Landroid/graphics/Matrix;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "DisplayInfo{displayId=%s, transform=%s}"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
