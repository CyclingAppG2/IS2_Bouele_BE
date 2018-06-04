class StatisticPdf < Prawn::Document

    def initialize(organization, statistic)
        super(top_margin: 70)
        @organization = organization
        @statistics = statistic
        title_document
        events = {}
        @statistics.each do |key, value|
            
            if key == "scoreByEvent"
                aux={}
                num = 1
                value.each do |k,v|
                    aux[num] = v
                    events[num] = k
                    num+=1
                end
                data  = {"Calificacion promedio por evento" => aux }
                data_per_graphScoreByEvent(data)
            elsif key == "assistenceByEvent"
                aux1={}
                aux2={}
                m = "max_voluntaries"
                a = "assistences"
                num = 1
                value.each do |k,v|
 
                    aux1[num] = v[ v.keys[0]]
                    aux2[num] = v[ v.keys[1]]
                    num+=1
                end
                data  = {"Voluntarios esperados" => aux1, "Voluntaros que asistieron" => aux2 }
                data_per_graphAssistenceByEvent(data)
            end
            
           
        end
        # text @statistics.to_s
    end

    def title_document
        text "Estadisticas generales de #{@organization.firm}", :align => :center, size: 30, style: :bold
    end
    def title_statistic(name)
        text name
    end

    def data_per_graphScoreByEvent(data)
        chart data
    end

    def data_per_graphAssistenceByEvent(data)
        chart data , colors: %w(e7a13d bc2d30)
    end
end