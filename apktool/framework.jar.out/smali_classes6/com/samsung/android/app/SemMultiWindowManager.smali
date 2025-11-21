.class public Lcom/samsung/android/app/SemMultiWindowManager;
.super Ljava/lang/Object;
.source "SemMultiWindowManager.java"


# static fields
.field public static final whitelist MODE_FREEFORM:I = 0x1

.field public static final whitelist MODE_NONE:I = 0x0

.field public static final whitelist MODE_PICTURE_IN_PICTURE:I = 0x4

.field public static final whitelist MODE_SPLIT_SCREEN:I = 0x2


# instance fields
.field private final blacklist mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method


# virtual methods
.method public whitelist getMode()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiWindowModeStates(I)I

    move-result p0

    return p0
.end method

.method public whitelist getSupportedModes(Landroid/content/pm/ResolveInfo;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I

    move-result p0

    return p0
.end method

.method public whitelist setMultiWindowEnabled(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/SemMultiWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string v0, "SEM_API"

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
