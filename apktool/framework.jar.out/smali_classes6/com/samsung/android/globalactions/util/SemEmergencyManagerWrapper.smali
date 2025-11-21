.class public Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;
.super Ljava/lang/Object;
.source "SemEmergencyManagerWrapper.java"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    return-void
.end method


# virtual methods
.method public blacklist canSetMode()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->canSetMode()Z

    move-result p0

    return p0
.end method

.method public blacklist isEmergencyMode()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public blacklist isModifying()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/util/SemEmergencyManagerWrapper;->mSemEmergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result p0

    return p0
.end method
