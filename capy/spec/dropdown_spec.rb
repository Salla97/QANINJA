

describe 'Caixa de opções', :dropdown do
    
    it 'item especifico simples' do #quando o elemento n tem id 
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 
    end

    it 'item especifico com o find' do # quando o elemento n tem id (usar css selector)
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item', :sample do # selecionar qualquer uma das opções do dropdown
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3
    end
end