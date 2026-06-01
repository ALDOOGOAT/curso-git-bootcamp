import Foundation

struct AppIdea {
    let owner: String
    let semester: String
    let appName: String
    let problem: String
    let flagshipFeature: String
    let swiftConcept: String
}

let sprintMission = "Mision del sprint: convertir ideas iOS en prototipos claros, colaborativos y listos para presentar."

var ideas: [AppIdea] = [
    AppIdea(
        owner: "Aldo Contreras",
        semester: "Instructor",
        appName: "LaunchBoard",
        problem: "Los equipos pierden acuerdos, versiones y decisiones antes de llegar al demo.",
        flagshipFeature: "Un tablero que resume el pitch, el avance y la siguiente accion del equipo.",
        swiftConcept: "Structs, arrays y funciones"
    )
]

// ALUMNOS: agreguen su AppIdea debajo de este comentario.
ideas.append(
    AppIdea(
        owner: "Juan Perez",
        semester: "3er semestre",
        appName: "StudentFlow",
        problem: "Quiero ver que el flujo funcione impecable.",
        flagshipFeature: "Aprender Git sin estrés.",
        swiftConcept: "Arrays"
    )
)

func renderLaunchBoard(_ ideas: [AppIdea]) {
    print("🚀 ============================================== 🚀")
    print("📱             iOS Launch Lab                   📱")
    print("🚀 ============================================== 🚀")
    print("🎯 \(sprintMission)")
    print("")

    for (index, idea) in ideas.enumerated() {
        print("💡 #\(index + 1) \(idea.appName)")
        print("   🧑‍💻 Responsable: \(idea.owner) - \(idea.semester)")
        print("   🚨 Problema: \(idea.problem)")
        print("   ✨ Feature estrella: \(idea.flagshipFeature)")
        print("   🛠️  Concepto Swift: \(idea.swiftConcept)")
        print("   ----------------------------------------------")
    }

    let concepts = Set(ideas.map(\.swiftConcept)).sorted()

    print("📊 Resumen")
    print("   ✅ Ideas registradas: \(ideas.count)")
    print("   🧠 Conceptos Swift explorados: \(concepts.joined(separator: ", "))")
    print("   🚀 Siguiente paso: abrir Pull Request y revisar el diff con el equipo.")
    print("==================================================")
}

renderLaunchBoard(ideas)
